
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int __filter_func_t ;
 int * rangeFilterFunc_dd ;
 int * rangeFilterFunc_ds ;
 int * rangeFilterFunc_i16 ;
 int * rangeFilterFunc_i32 ;
 int * rangeFilterFunc_i64 ;
 int * rangeFilterFunc_i8 ;

__filter_func_t* vnodeGetRangeFilterFuncArray(int32_t type) {
  switch(type) {
    case 134: return rangeFilterFunc_i8;
    case 128: return rangeFilterFunc_i8;
    case 130: return rangeFilterFunc_i16;
    case 131: return rangeFilterFunc_i32;
    case 129:
    case 135: return rangeFilterFunc_i64;
    case 132: return rangeFilterFunc_ds;
    case 133: return rangeFilterFunc_dd;
    default:return ((void*)0);
  }
}
