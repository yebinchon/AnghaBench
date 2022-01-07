
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int __filter_func_t ;
 int * filterFunc_dd ;
 int * filterFunc_ds ;
 int * filterFunc_i16 ;
 int * filterFunc_i32 ;
 int * filterFunc_i64 ;
 int * filterFunc_i8 ;
 int * filterFunc_nchar ;
 int * filterFunc_str ;

__filter_func_t* vnodeGetValueFilterFuncArray(int32_t type) {
  switch(type) {
    case 135: return filterFunc_i8;
    case 128: return filterFunc_i8;
    case 130: return filterFunc_i16;
    case 132: return filterFunc_i32;
    case 129:
    case 137: return filterFunc_i64;
    case 133: return filterFunc_ds;
    case 134: return filterFunc_dd;
    case 136: return filterFunc_str;
    case 131: return filterFunc_nchar;
    default: return ((void*)0);
  }
}
