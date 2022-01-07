
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int mode; TYPE_3__* mask; TYPE_3__* mask_filtered; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_9__ {TYPE_1__* plane; } ;
typedef TYPE_3__ hb_buffer_t ;
struct TYPE_7__ {int height; int stride; int width; int * data; } ;


 int MODE_COMPOSITE ;
 int MODE_FILTER ;
 int apply_mask_line (int *,int *,int ) ;
 int draw_mask_box (TYPE_2__*) ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int,int ) ;

__attribute__((used)) static void apply_mask(hb_filter_private_t * pv, hb_buffer_t * b)
{

    draw_mask_box( pv );

    int pp, yy;
    hb_buffer_t * m;

    if (pv->mode & MODE_FILTER)
    {
        m = pv->mask_filtered;
    }
    else
    {
        m = pv->mask;
    }
    for (pp = 0; pp < 3; pp++)
    {
        uint8_t * dstp = b->plane[pp].data;
        uint8_t * mskp = m->plane[pp].data;

        for (yy = 0; yy < m->plane[pp].height; yy++)
        {
            if (!(pv->mode & MODE_COMPOSITE) && pp == 0)
            {
                memcpy(dstp, mskp, m->plane[pp].width);
            }
            else if (!(pv->mode & MODE_COMPOSITE))
            {
                memset(dstp, 128, m->plane[pp].width);
            }
            if (pp == 0)
            {
                apply_mask_line(dstp, mskp, m->plane[pp].width);
            }

            dstp += b->plane[pp].stride;
            mskp += m->plane[pp].stride;
        }
    }
}
