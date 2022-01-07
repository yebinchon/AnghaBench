
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int * __compar_fn_t ;
 int * compareDoubleVal ;
 int * compareIntVal ;
 int * compareStrVal ;
 int * compareWStrVal ;

__attribute__((used)) static __compar_fn_t getKeyComparator(int32_t keyType) {
  __compar_fn_t comparator = ((void*)0);

  switch (keyType) {
    case 128:
    case 129:
    case 131:
    case 136:
    case 134:
      comparator = compareIntVal;
      break;

    case 132:
    case 133:
      comparator = compareDoubleVal;
      break;

    case 135:
      comparator = compareStrVal;
      break;

    case 130:
      comparator = compareWStrVal;
      break;

    default:
      comparator = compareIntVal;
      break;
  }

  return comparator;
}
