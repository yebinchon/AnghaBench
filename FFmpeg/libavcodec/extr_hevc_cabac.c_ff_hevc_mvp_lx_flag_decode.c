
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HEVCContext ;


 int GET_CABAC (int ) ;
 size_t MVP_LX_FLAG ;
 int * elem_offset ;

int ff_hevc_mvp_lx_flag_decode(HEVCContext *s)
{
    return GET_CABAC(elem_offset[MVP_LX_FLAG]);
}
