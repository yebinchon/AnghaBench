
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {float title_block_count; int stopped; scalar_t__ title; scalar_t__ cell; scalar_t__ chapter; int dvdnav; int list_dvd_chapter; } ;
typedef TYPE_1__ hb_dvdnav_t ;
struct TYPE_7__ {TYPE_1__ dvdnav; } ;
typedef TYPE_2__ hb_dvd_t ;
struct TYPE_8__ {scalar_t__ block_end; scalar_t__ block_start; scalar_t__ pgcn; int pgn; } ;
typedef TYPE_3__ hb_dvd_chapter_t ;
 int DVDNAV_STATUS_ERR ;
 scalar_t__ DVDNAV_STATUS_OK ;




 int HB_DVD_READ_BUFFER_SIZE ;
 int SEEK_SET ;
 scalar_t__ dvdnav_current_title_program (int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int dvdnav_err_to_string (int ) ;
 int dvdnav_get_next_block (int ,int *,int*,int*) ;
 scalar_t__ dvdnav_program_play (int ,scalar_t__,scalar_t__,int ) ;
 int dvdnav_reset (int ) ;
 scalar_t__ dvdnav_sector_search (int ,scalar_t__,int ) ;
 int dvdnav_still_skip (int ) ;
 int dvdnav_wait_skip (int ) ;
 int hb_error (char*,int ) ;
 int hb_list_count (int ) ;
 TYPE_3__* hb_list_item (int ,int) ;
 int hb_log (char*,...) ;

__attribute__((used)) static int hb_dvdnav_seek( hb_dvd_t * e, float f )
{
    hb_dvdnav_t * d = &(e->dvdnav);
    uint64_t sector = f * d->title_block_count;
    int result, event, len;
    uint8_t buf[HB_DVD_READ_BUFFER_SIZE];
    int done = 0, ii;

    if (d->stopped)
    {
        return 0;
    }




    uint64_t pgc_offset = 0;
    uint64_t chap_offset = 0;
    hb_dvd_chapter_t *pgc_change = hb_list_item(d->list_dvd_chapter, 0 );
    for ( ii = 0; ii < hb_list_count( d->list_dvd_chapter ); ++ii )
    {
        hb_dvd_chapter_t *chapter = hb_list_item( d->list_dvd_chapter, ii );
        uint64_t chap_len = chapter->block_end - chapter->block_start + 1;

        if ( chapter->pgcn != pgc_change->pgcn )
        {


            pgc_offset = chap_offset;
            pgc_change = chapter;
        }
        if ( chap_offset <= sector && sector < chap_offset + chap_len )
        {


            int32_t title, pgcn, pgn;
            if (dvdnav_current_title_program( d->dvdnav, &title, &pgcn, &pgn ) != DVDNAV_STATUS_OK)
                hb_log("dvdnav cur pgcn err: %s", dvdnav_err_to_string(d->dvdnav));




            if ( d->title != title )
                dvdnav_reset( d->dvdnav );

            if ( d->title != title || chapter->pgcn != pgcn )
            {

                if (dvdnav_program_play(d->dvdnav, d->title, chapter->pgcn, chapter->pgn) != DVDNAV_STATUS_OK)
                    hb_log("dvdnav prog play err: %s", dvdnav_err_to_string(d->dvdnav));
            }

            sector -= pgc_offset;
            break;
        }
        chap_offset += chap_len;
    }





    for (ii = 0; ii < 100 && !done; ii++)
    {
        result = dvdnav_get_next_block( d->dvdnav, buf, &event, &len );
        if ( result == DVDNAV_STATUS_ERR )
        {
            hb_error("dvdnav: Read Error, %s", dvdnav_err_to_string(d->dvdnav));
            return 0;
        }
        switch ( event )
        {
        case 139:
        case 138:
            done = 1;
            break;

        case 131:
            dvdnav_still_skip( d->dvdnav );
            break;

        case 128:
            dvdnav_wait_skip( d->dvdnav );
            break;

        case 130:
            hb_log("dvdnav: stop encountered during seek");
            d->stopped = 1;
            return 0;

        case 136:
        case 135:
        case 129:
        case 137:
        case 140:
        case 132:
        case 133:
        case 134:
        default:
            break;
        }
    }

    if (dvdnav_sector_search(d->dvdnav, sector, SEEK_SET) != DVDNAV_STATUS_OK)
    {
        hb_error( "dvd: dvdnav_sector_search failed - %s",
                  dvdnav_err_to_string(d->dvdnav) );
        return 0;
    }
    d->chapter = 0;
    d->cell = 0;
    return 1;
}
