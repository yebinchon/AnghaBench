
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HEVCContext ;


 size_t EXPLICIT_RDPCM_DIR_FLAG ;
 int GET_CABAC (scalar_t__) ;
 scalar_t__* elem_offset ;

__attribute__((used)) static int explicit_rdpcm_dir_flag_decode(HEVCContext *s, int c_idx)
{
    return GET_CABAC(elem_offset[EXPLICIT_RDPCM_DIR_FLAG] + !!c_idx);
}
