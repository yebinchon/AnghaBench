
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int calc_fn_i16_d_multi (void*,void*,int ,int ,void*,int ) ;

void calc_fn_d_i16_multi(void *left, void *right, int32_t numLeft, int32_t numRight, void *output, int32_t order) {
  calc_fn_i16_d_multi(right, left, numRight, numLeft, output, order);
}
