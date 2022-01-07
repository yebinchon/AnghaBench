
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int stopped; int title; int chapter; int cell; int list_dvd_chapter; int dvdnav; int h; } ;
typedef TYPE_2__ hb_dvdnav_t ;
struct TYPE_12__ {TYPE_2__ dvdnav; } ;
typedef TYPE_3__ hb_dvd_t ;
struct TYPE_10__ {int new_chap; } ;
struct TYPE_13__ {TYPE_1__ s; scalar_t__ data; } ;
typedef TYPE_4__ hb_buffer_t ;
struct TYPE_14__ {int cellN; } ;
typedef TYPE_5__ dvdnav_cell_change_event_t ;
 int DVDNAV_STATUS_ERR ;
 scalar_t__ DVDNAV_STATUS_OK ;




 int FindChapterIndex (int ,int,int) ;
 int HB_DVD_READ_BUFFER_SIZE ;
 int HB_ERROR_READ ;
 int SEEK_CUR ;
 int dvdnav_current_title_program (int ,int*,int*,int*) ;
 int dvdnav_err_to_string (int ) ;
 int dvdnav_get_next_block (int ,scalar_t__,int*,int*) ;
 scalar_t__ dvdnav_sector_search (int ,int,int ) ;
 int dvdnav_still_skip (int ) ;
 int dvdnav_wait_skip (int ) ;
 int hb_buffer_close (TYPE_4__**) ;
 TYPE_4__* hb_buffer_init (int ) ;
 int hb_deep_log (int,char*) ;
 int hb_error (char*,...) ;
 int hb_set_work_error (int ,int ) ;

__attribute__((used)) static hb_buffer_t * hb_dvdnav_read( hb_dvd_t * e )
{
    hb_dvdnav_t * d = &(e->dvdnav);
    int result, event, len;
    int chapter = 0;
    int error_count = 0;
    hb_buffer_t *b = hb_buffer_init( HB_DVD_READ_BUFFER_SIZE );

    while ( 1 )
    {
        if (d->stopped)
        {
            hb_buffer_close( &b );
            return ((void*)0);
        }
        result = dvdnav_get_next_block( d->dvdnav, b->data, &event, &len );
        if ( result == DVDNAV_STATUS_ERR )
        {
            hb_error("dvdnav: Read Error, %s", dvdnav_err_to_string(d->dvdnav));
            if (dvdnav_sector_search(d->dvdnav, 1, SEEK_CUR) != DVDNAV_STATUS_OK)
            {
                hb_error( "dvd: dvdnav_sector_search failed - %s",
                        dvdnav_err_to_string(d->dvdnav) );
                hb_buffer_close( &b );
                hb_set_work_error(d->h, HB_ERROR_READ);
                return ((void*)0);
            }
            error_count++;
            if (error_count > 500)
            {
                hb_error("dvdnav: Error, too many consecutive read errors");
                hb_buffer_close( &b );
                hb_set_work_error(d->h, HB_ERROR_READ);
                return ((void*)0);
            }
            continue;
        }
        switch ( event )
        {
        case 139:


            b->s.new_chap = chapter;
            chapter = 0;
            error_count = 0;
            return b;

        case 134:



            break;

        case 131:
            dvdnav_still_skip( d->dvdnav );
            break;

        case 128:
            dvdnav_wait_skip( d->dvdnav );
            break;

        case 133:




            break;

        case 132:




            break;

        case 140:




            break;

        case 137:




            break;

        case 129:






            {
                int tt = 0, pgcn = 0, pgn = 0;

                dvdnav_current_title_program(d->dvdnav, &tt, &pgcn, &pgn);
                if (tt != d->title)
                {

                    hb_buffer_close( &b );
                    hb_deep_log(2, "dvdnav: vts change, found next title");
                    return ((void*)0);
                }
            }
            break;

        case 138:






            {
                dvdnav_cell_change_event_t * cell_event;
                int tt = 0, pgcn = 0, pgn = 0, c;

                cell_event = (dvdnav_cell_change_event_t*)b->data;

                dvdnav_current_title_program(d->dvdnav, &tt, &pgcn, &pgn);
                if (tt != d->title)
                {

                    hb_buffer_close( &b );
                    hb_deep_log(2, "dvdnav: cell change, found next title");
                    return ((void*)0);
                }
                c = FindChapterIndex(d->list_dvd_chapter, pgcn, pgn);
                if (c != d->chapter)
                {
                    if (c < d->chapter)
                    {


                        hb_buffer_close( &b );
                        hb_deep_log(2, "dvdnav: cell change, previous chapter");
                        return ((void*)0);
                    }
                    chapter = d->chapter = c;
                }
                else if ( cell_event->cellN <= d->cell )
                {
                    hb_buffer_close( &b );
                    hb_deep_log(2, "dvdnav: cell change, previous cell");
                    return ((void*)0);
                }
                d->cell = cell_event->cellN;
            }
            break;

        case 135:
            b->s.new_chap = chapter;
            return b;

            break;

        case 136:





            break;

        case 130:



            d->stopped = 1;
            hb_buffer_close( &b );
            hb_deep_log(2, "dvdnav: stop");
            return ((void*)0);

        default:
            break;
        }
    }
    hb_buffer_close( &b );
    return ((void*)0);
}
