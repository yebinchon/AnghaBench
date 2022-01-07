
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int block_threshold; int block_width; int block_height; int comb_check_complete; int mask_box_x; int mask_box_y; int* block_score; TYPE_2__* mask; } ;
typedef TYPE_3__ hb_filter_private_t ;
struct TYPE_6__ {TYPE_1__* plane; } ;
struct TYPE_5__ {int stride; int width; int* data; } ;



__attribute__((used)) static void check_combing_mask( hb_filter_private_t * pv, int segment,
                                int start, int stop )
{
    int threshold = pv->block_threshold;
    int block_width = pv->block_width;
    int block_height = pv->block_height;
    int block_x, block_y;
    int block_score = 0;
    uint8_t * mask_p;
    int x, y, pp;

    for (pp = 0; pp < 1; pp++)
    {
        int stride = pv->mask->plane[pp].stride;
        int width = pv->mask->plane[pp].width;

        for (y = start; y < (stop - block_height + 1); y = y + block_height)
        {
            for (x = 0; x < (width - block_width); x = x + block_width)
            {
                block_score = 0;

                for (block_y = 0; block_y < block_height; block_y++)
                {
                    int mask_y = y + block_y;
                    mask_p = &pv->mask->plane[pp].data[mask_y * stride + x];

                    for (block_x = 0; block_x < block_width; block_x++)
                    {



                        if ((x + block_x) == 0)
                        {
                            block_score += mask_p[0] & mask_p[1];
                        }
                        else if ((x + block_x) == (width -1))
                        {
                            block_score += mask_p[-1] & mask_p[0];
                        }
                        else
                        {
                            block_score += mask_p[-1] & mask_p[0] & mask_p[1];
                        }

                        mask_p++;
                    }
                }

                if (pv->comb_check_complete)
                {

                    return;
                }

                if (block_score >= ( threshold / 2 ))
                {
                    pv->mask_box_x = x;
                    pv->mask_box_y = y;

                    pv->block_score[segment] = block_score;
                    if (block_score > threshold)
                    {
                        pv->comb_check_complete = 1;
                        return;
                    }
                }
            }
        }
    }
}
