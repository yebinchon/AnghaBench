
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_11__ {float* gamma_lut; scalar_t__ frames; TYPE_4__* mask; TYPE_2__** ref; scalar_t__ spatial_threshold; scalar_t__ motion_threshold; } ;
typedef TYPE_5__ hb_filter_private_t ;
struct TYPE_10__ {TYPE_3__* plane; } ;
struct TYPE_9__ {size_t* data; } ;
struct TYPE_8__ {TYPE_1__* plane; } ;
struct TYPE_7__ {int stride; int width; int height; size_t* data; } ;


 float fabs (float) ;
 int memset (size_t*,int ,int) ;

__attribute__((used)) static void detect_gamma_combed_segment( hb_filter_private_t * pv,
                                         int segment_start, int segment_stop )
{







    float mthresh = (float)pv->motion_threshold / (float)255;

    float athresh = (float)pv->spatial_threshold / (float)255;
    float athresh6 = 6 *athresh;


    int pp;
    for (pp = 0; pp < 1; pp++)
    {
        int x, y;
        int stride = pv->ref[0]->plane[pp].stride;
        int width = pv->ref[0]->plane[pp].width;
        int height = pv->ref[0]->plane[pp].height;




        if (segment_start < 2)
            segment_start = 2;
        if (segment_stop > height - 2)
            segment_stop = height - 2;

        for (y = segment_start; y < segment_stop; y++)
        {

            int up_2 = -2 * stride ;
            int up_1 = -1 * stride;
            int down_1 = stride;
            int down_2 = 2 * stride;



            uint8_t * prev = &pv->ref[0]->plane[pp].data[y * stride];
            uint8_t * cur = &pv->ref[1]->plane[pp].data[y * stride];
            uint8_t * next = &pv->ref[2]->plane[pp].data[y * stride];
            uint8_t * mask = &pv->mask->plane[pp].data[y * stride];

            memset(mask, 0, stride);

            for (x = 0; x < width; x++)
            {
                float up_diff, down_diff;
                up_diff = pv->gamma_lut[cur[0]] - pv->gamma_lut[cur[up_1]];
                down_diff = pv->gamma_lut[cur[0]] - pv->gamma_lut[cur[down_1]];

                if (( up_diff > athresh && down_diff > athresh ) ||
                    ( up_diff < -athresh && down_diff < -athresh ))
                {


                    int motion = 0;
                    if (mthresh > 0)
                    {

                        if (fabs(pv->gamma_lut[prev[0]] - pv->gamma_lut[cur[0]] ) > mthresh &&
                            fabs(pv->gamma_lut[cur[up_1]] - pv->gamma_lut[next[up_1]] ) > mthresh &&
                            fabs(pv->gamma_lut[cur[down_1]] - pv->gamma_lut[next[down_1]]) > mthresh)
                                motion++;
                        if (fabs(pv->gamma_lut[next[0]] - pv->gamma_lut[cur[0]] ) > mthresh &&
                            fabs(pv->gamma_lut[prev[up_1]] - pv->gamma_lut[cur[up_1]] ) > mthresh &&
                            fabs(pv->gamma_lut[prev[down_1]] - pv->gamma_lut[cur[down_1]]) > mthresh)
                                motion++;

                    }
                    else
                    {


                        motion = 1;
                    }

                    if (motion || pv->frames == 0)
                    {
                        float combing;


                        combing = fabs(pv->gamma_lut[cur[up_2]] +
                                       (4 * pv->gamma_lut[cur[0]]) +
                                       pv->gamma_lut[cur[down_2]] -
                                       (3 * (pv->gamma_lut[cur[up_1]] +
                                             pv->gamma_lut[cur[down_1]])));


                        if (combing > athresh6)
                        {
                            mask[0] = 1;
                        }
                    }
                }

                cur++;
                prev++;
                next++;
                mask++;
            }
        }
    }
}
