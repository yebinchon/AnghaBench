
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int * _bi_consumer_fn_t ;







 int *** add_function_arraylist ;
 int *** div_function_arraylist ;
 int *** multi_function_arraylist ;
 int *** rem_function_arraylist ;
 int *** sub_function_arraylist ;

_bi_consumer_fn_t tGetBiConsumerFn(int32_t leftType, int32_t rightType, int32_t optr) {
  switch (optr) {
    case 132:
      return add_function_arraylist[leftType][rightType];
    case 128:
      return sub_function_arraylist[leftType][rightType];
    case 130:
      return multi_function_arraylist[leftType][rightType];
    case 131:
      return div_function_arraylist[leftType][rightType];
    case 129:
      return rem_function_arraylist[leftType][rightType];
    default:
      return ((void*)0);
  }
  return ((void*)0);
}
