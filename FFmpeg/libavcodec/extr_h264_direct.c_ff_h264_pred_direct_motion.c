
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ direct_spatial_mv_pred; } ;
typedef TYPE_1__ H264SliceContext ;
typedef int H264Context ;


 int pred_spatial_direct_motion (int const* const,TYPE_1__*,int*) ;
 int pred_temp_direct_motion (int const* const,TYPE_1__*,int*) ;

void ff_h264_pred_direct_motion(const H264Context *const h, H264SliceContext *sl,
                                int *mb_type)
{
    if (sl->direct_spatial_mv_pred)
        pred_spatial_direct_motion(h, sl, mb_type);
    else
        pred_temp_direct_motion(h, sl, mb_type);
}
