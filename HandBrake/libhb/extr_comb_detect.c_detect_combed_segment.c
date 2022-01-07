
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int spatial_metric; int motion_threshold; int spatial_threshold; scalar_t__ frames; TYPE_4__* mask; TYPE_2__** ref; } ;
typedef TYPE_5__ hb_filter_private_t ;
struct TYPE_10__ {TYPE_3__* plane; } ;
struct TYPE_9__ {int* data; } ;
struct TYPE_8__ {TYPE_1__* plane; } ;
struct TYPE_7__ {int stride; int width; int height; int* data; } ;


 int abs (int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void detect_combed_segment( hb_filter_private_t * pv,
                                   int segment_start, int segment_stop )
{







    int spatial_metric = pv->spatial_metric;

    int mthresh = pv->motion_threshold;

    int athresh = pv->spatial_threshold;
    int athresh_squared = athresh * athresh;
    int athresh6 = 6 * athresh;


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
                int up_diff = cur[0] - cur[up_1];
                int down_diff = cur[0] - cur[down_1];

                if (( up_diff > athresh && down_diff > athresh ) ||
                    ( up_diff < -athresh && down_diff < -athresh ))
                {


                    int motion = 0;
                    if (mthresh > 0)
                    {

                        if (abs(prev[0] - cur[0] ) > mthresh &&
                            abs(cur[up_1] - next[up_1] ) > mthresh &&
                            abs(cur[down_1] - next[down_1]) > mthresh)
                                motion++;
                        if (abs(next[0] - cur[0] ) > mthresh &&
                            abs(prev[up_1] - cur[up_1] ) > mthresh &&
                            abs(prev[down_1] - cur[down_1]) > mthresh)
                                motion++;
                    }
                    else
                    {


                        motion = 1;
                    }


                    if (motion || pv->frames == 0)
                    {


                        if (spatial_metric == 0)
                        {

                            if ((abs(cur[0] - cur[down_2]) < 10) &&
                                (abs(cur[0] - cur[down_1]) > 15))
                            {
                                mask[0] = 1;
                            }
                        }
                        else if (spatial_metric == 1)
                        {


                               int combing = ( cur[up_1] - cur[0] ) *
                                             ( cur[down_1] - cur[0] );

                               if (combing > athresh_squared)
                               {
                                   mask[0] = 1;
                               }
                        }
                        else if (spatial_metric == 2)
                        {


                            int combing = abs( cur[up_2]
                                             + ( 4 * cur[0] )
                                             + cur[down_2]
                                             - ( 3 * ( cur[up_1]
                                                     + cur[down_1] ) ) );



                            if (combing > athresh6)
                            {
                                mask[0] = 1;
                            }
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
