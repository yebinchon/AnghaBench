
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HEVCContext ;


 int GET_CABAC (scalar_t__) ;
 size_t TRANSFORM_SKIP_FLAG ;
 scalar_t__* elem_offset ;

__attribute__((used)) static int hevc_transform_skip_flag_decode(HEVCContext *s, int c_idx)
{
    return GET_CABAC(elem_offset[TRANSFORM_SKIP_FLAG] + !!c_idx);
}
