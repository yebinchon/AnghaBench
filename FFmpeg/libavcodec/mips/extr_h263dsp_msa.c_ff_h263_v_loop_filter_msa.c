
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int h263_v_loop_filter_msa (int *,int ,int ) ;

void ff_h263_v_loop_filter_msa(uint8_t *src, int32_t stride, int32_t q_scale)
{
    h263_v_loop_filter_msa(src, stride, q_scale);
}
