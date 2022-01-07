
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int hb_buffer_t ;
struct TYPE_5__ {int stream; int chapter; int next_chap; int h; int bd; } ;
typedef TYPE_1__ hb_bd_t ;
struct TYPE_6__ {int event; int param; } ;
typedef TYPE_2__ BD_EVENT ;






 int HB_ERROR_READ ;
 scalar_t__ bd_get_event (int ,TYPE_2__*) ;
 int bd_read_skip_still (int ) ;
 int bd_seek (int ,scalar_t__) ;
 scalar_t__ bd_tell (int ) ;
 int hb_deep_log (int,char*,int ) ;
 int hb_error (char*) ;
 int hb_log (char*) ;
 int hb_set_work_error (int ,int ) ;
 int * hb_ts_decode_pkt (int ,int*,int ,int) ;
 int next_packet (int ,int*) ;

hb_buffer_t * hb_bd_read( hb_bd_t * d )
{
    int result;
    int error_count = 0;
    int retry_count = 0;
    uint8_t buf[192];
    BD_EVENT event;
    uint64_t pos;
    hb_buffer_t * out = ((void*)0);
    uint8_t discontinuity;

    while ( 1 )
    {
        discontinuity = 0;
        result = next_packet( d->bd, buf );
        while ( bd_get_event( d->bd, &event ) )
        {
            switch ( event.event )
            {
                case 131:


                    if (event.param > d->chapter)
                    {
                        d->next_chap = event.param;
                    }
                    break;

                case 129:
                    discontinuity = 1;
                    hb_deep_log(2, "bd: Play item %u", event.param);
                    break;

                case 128:
                    bd_read_skip_still( d->bd );
                    break;

                case 130:
                    hb_log("bd: End of title");
                    if (result <= 0)
                    {
                        return ((void*)0);
                    }
                    break;

                default:
                    break;
            }
        }

        if ( result < 0 )
        {
            hb_error("bd: Read Error");
            pos = bd_tell( d->bd );
            bd_seek( d->bd, pos + 192 );
            error_count++;
            if (error_count > 10)
            {
                hb_error("bd: Error, too many consecutive read errors");
                hb_set_work_error(d->h, HB_ERROR_READ);
                return ((void*)0);
            }
            continue;
        }
        else if ( result == 0 )
        {



            retry_count++;
            if (retry_count > 1000)
            {


                return ((void*)0);
            }
            continue;
        }

        if (retry_count > 0)
        {
            hb_error("bd: Read Error, skipping bad data.");
            retry_count = 0;
        }

        error_count = 0;

        if (d->chapter != d->next_chap)
        {
            d->chapter = d->next_chap;
            out = hb_ts_decode_pkt(d->stream, buf+4, d->chapter, discontinuity);
        }
        else
        {
            out = hb_ts_decode_pkt(d->stream, buf+4, 0, discontinuity);
        }
        if (out != ((void*)0))
        {
            return out;
        }
    }
    return ((void*)0);
}
