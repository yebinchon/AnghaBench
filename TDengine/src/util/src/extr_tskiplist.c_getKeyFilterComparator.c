
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keyType; } ;
typedef TYPE_1__ tSkipList ;
typedef int const int32_t ;
typedef int * __compar_fn_t ;
 int * compareDoubleIntVal ;
 int * compareDoubleVal ;
 int * compareIntDoubleVal ;
 int * compareIntVal ;
 int * compareStrVal ;
 int * compareWStrVal ;

__attribute__((used)) static __compar_fn_t getKeyFilterComparator(tSkipList *pSkipList, int32_t filterDataType) {
  __compar_fn_t comparator = ((void*)0);

  switch (pSkipList->keyType) {
    case 128:
    case 129:
    case 131:
    case 136:
    case 134: {
      if (filterDataType >= 134 && filterDataType <= 136) {
        comparator = compareIntVal;
      } else if (filterDataType >= 132 && filterDataType <= 133) {
        comparator = compareIntDoubleVal;
      }
      break;
    }
    case 132:
    case 133: {
      if (filterDataType >= 134 && filterDataType <= 136) {
        comparator = compareDoubleIntVal;
      } else if (filterDataType >= 132 && filterDataType <= 133) {
        comparator = compareDoubleVal;
      }
      break;
    }
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
