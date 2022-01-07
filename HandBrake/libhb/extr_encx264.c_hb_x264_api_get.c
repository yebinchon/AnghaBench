
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bit_depth; } ;
typedef TYPE_1__ x264_api_t ;


 int HB_X264_API_COUNT ;
 TYPE_1__ const* x264_apis ;

const x264_api_t * hb_x264_api_get(int bit_depth)
{
    int ii;

    for (ii = 0; ii < HB_X264_API_COUNT; ii++)
    {
        if (-1 != x264_apis[ii].bit_depth &&
            bit_depth == x264_apis[ii].bit_depth)
        {
            return &x264_apis[ii];
        }
    }
    return ((void*)0);
}
