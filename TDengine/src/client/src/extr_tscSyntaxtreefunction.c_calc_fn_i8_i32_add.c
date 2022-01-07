
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int calc_fn_i32_i8_add (void*,void*,int ,int ,void*,int ) ;

void calc_fn_i8_i32_add(void *left, void *right, int32_t numLeft, int32_t numRight, void *output, int32_t order) {
  calc_fn_i32_i8_add(right, left, numRight, numLeft, output, order);
}
