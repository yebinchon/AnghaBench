
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HEVCContext ;


 scalar_t__ GET_CABAC (scalar_t__) ;
 size_t LOG2_RES_SCALE_ABS ;
 scalar_t__* elem_offset ;

int ff_hevc_log2_res_scale_abs(HEVCContext *s, int idx) {
    int i =0;

    while (i < 4 && GET_CABAC(elem_offset[LOG2_RES_SCALE_ABS] + 4 * idx + i))
        i++;

    return i;
}
