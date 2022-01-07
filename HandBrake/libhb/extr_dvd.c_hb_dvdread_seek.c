
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {float title_block_count; int cell_start; int cell_end; int cell_cur; int next_vobu; int in_sync; scalar_t__ pack_len; TYPE_2__* pgc; scalar_t__ cur_cell_id; } ;
typedef TYPE_3__ hb_dvdread_t ;
struct TYPE_10__ {TYPE_3__ dvdread; } ;
typedef TYPE_4__ hb_dvd_t ;
struct TYPE_8__ {TYPE_1__* cell_playback; } ;
struct TYPE_7__ {int last_sector; int first_sector; } ;


 int FindNextCell (TYPE_3__*) ;

__attribute__((used)) static int hb_dvdread_seek( hb_dvd_t * e, float f )
{
    hb_dvdread_t *d = &(e->dvdread);
    int count, sizeCell;
    int i;

    count = f * d->title_block_count;

    for( i = d->cell_start; i <= d->cell_end; i++ )
    {
        sizeCell = d->pgc->cell_playback[i].last_sector + 1 -
            d->pgc->cell_playback[i].first_sector;

        if( count < sizeCell )
        {
            d->cell_cur = i;
            d->cur_cell_id = 0;
            FindNextCell( d );


            d->next_vobu = d->pgc->cell_playback[i].first_sector + count;
            d->pack_len = 0;
            break;
        }

        count -= sizeCell;
    }

    if( i > d->cell_end )
    {
        return 0;
    }





    d->in_sync = 2;

    return 1;
}
