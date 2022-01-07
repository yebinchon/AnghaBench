
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_6__ {scalar_t__ flags; } ;
struct TYPE_5__ {TYPE_2__ me; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ MotionEstContext ;


 int epzs_motion_search_internal (TYPE_1__*,int*,int*,int**,int,int,int **,int,scalar_t__,int,int) ;

int ff_epzs_motion_search(MpegEncContext *s, int *mx_ptr, int *my_ptr,
                          int P[10][2], int src_index, int ref_index,
                          int16_t (*last_mv)[2], int ref_mv_scale,
                          int size, int h)
{
    MotionEstContext * const c= &s->me;

    if(c->flags==0 && h==16 && size==0){
        return epzs_motion_search_internal(s, mx_ptr, my_ptr, P, src_index, ref_index, last_mv, ref_mv_scale, 0, 0, 16);


    }else{
        return epzs_motion_search_internal(s, mx_ptr, my_ptr, P, src_index, ref_index, last_mv, ref_mv_scale, c->flags, size, h);
    }
}
