
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cell_playback; } ;
typedef TYPE_2__ pgc_t ;
struct TYPE_4__ {scalar_t__ block_type; scalar_t__ block_mode; } ;


 scalar_t__ BLOCK_MODE_LAST_CELL ;
 scalar_t__ BLOCK_TYPE_ANGLE_BLOCK ;
 int hb_log (char*,int,int) ;

__attribute__((used)) static int FindNextCell( pgc_t *pgc, int cell_cur )
{
    int i = 0;
    int cell_next;

    if( pgc->cell_playback[cell_cur].block_type ==
            BLOCK_TYPE_ANGLE_BLOCK )
    {

        while( pgc->cell_playback[cell_cur+i].block_mode !=
                   BLOCK_MODE_LAST_CELL )
        {
             i++;
        }
        cell_next = cell_cur + i + 1;
        hb_log( "dvd: Skipping multi-angle cells %d-%d",
                cell_cur,
                cell_next - 1 );
    }
    else
    {
        cell_next = cell_cur + 1;
    }
    return cell_next;
}
