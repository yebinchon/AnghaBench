
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t cell_cur; int cell_next; TYPE_2__* pgc; } ;
typedef TYPE_3__ hb_dvdread_t ;
struct TYPE_6__ {TYPE_1__* cell_playback; } ;
struct TYPE_5__ {scalar_t__ block_type; scalar_t__ block_mode; } ;


 scalar_t__ BLOCK_MODE_LAST_CELL ;
 scalar_t__ BLOCK_TYPE_ANGLE_BLOCK ;
 int hb_log (char*,int,int) ;

__attribute__((used)) static void FindNextCell( hb_dvdread_t * d )
{
    int i = 0;

    if( d->pgc->cell_playback[d->cell_cur].block_type ==
            BLOCK_TYPE_ANGLE_BLOCK )
    {

        while( d->pgc->cell_playback[d->cell_cur+i].block_mode !=
                   BLOCK_MODE_LAST_CELL )
        {
             i++;
        }
        d->cell_next = d->cell_cur + i + 1;
        hb_log( "dvd: Skipping multi-angle cells %d-%d",
                d->cell_cur,
                d->cell_next - 1 );
    }
    else
    {
        d->cell_next = d->cell_cur + 1;
    }
}
