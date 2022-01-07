
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ PCR_PID; } ;
struct TYPE_6__ {int ts_flags; TYPE_1__ pmt_info; } ;
typedef TYPE_2__ hb_stream_t ;


 int TS_HAS_PCR ;
 int TS_HAS_RAP ;
 int hb_log (char*,int const,...) ;
 int* next_packet (TYPE_2__*) ;

__attribute__((used)) static const uint8_t *hb_ts_stream_getPEStype(hb_stream_t *stream, uint32_t pid, int *out_adapt_len)
{
    int npack = 300000;

    while (--npack >= 0)
    {
        const uint8_t *buf = next_packet( stream );
        if ( buf == ((void*)0) )
        {
            hb_log("hb_ts_stream_getPEStype: EOF while searching for PID 0x%x", pid);
            return 0;
        }



        uint32_t pack_pid = ( (buf[1] & 0x1f) << 8 ) | buf[2];
        if ( pack_pid == stream->pmt_info.PCR_PID )
        {
            if ( ( buf[5] & 0x10 ) &&
                 ( ( ( buf[3] & 0x30 ) == 0x20 ) ||
                   ( ( buf[3] & 0x30 ) == 0x30 && buf[4] > 6 ) ) )
            {
                stream->ts_flags |= TS_HAS_PCR;
            }
        }
        if ( buf[5] & 0x40 )
        {
            stream->ts_flags |= TS_HAS_RAP;
        }





        if ((buf[1] & 0x40) == 0 || pack_pid != pid )
        {

            continue;
        }

        int adapt_len = 0;

        switch (buf[3] & 0x30)
        {
            case 0x00:
            case 0x20:
                continue;

            case 0x30:
                adapt_len = buf[4] + 1;
                if (adapt_len > 184)
                {
                    hb_log("hb_ts_stream_getPEStype: invalid adaptation field length %d for PID 0x%x", buf[4], pid);
                    continue;
                }
                break;
        }

        if (buf[adapt_len+4] == 0x00 && buf[adapt_len+5] == 0x00 && buf[adapt_len+6] == 0x01)
        {
            *out_adapt_len = adapt_len;
            return buf;
        }
    }


    return 0;
}
