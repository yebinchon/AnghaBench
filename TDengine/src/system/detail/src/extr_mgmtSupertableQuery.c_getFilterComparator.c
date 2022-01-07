
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int * __compar_fn_t ;
 int TSDB_RELATION_LIKE ;
 int assert (int) ;
 int * compareDoubleIntVal ;
 int * compareDoubleVal ;
 int * compareIntDoubleVal ;
 int * compareIntVal ;
 int * compareStrPatternComp ;
 int * compareStrVal ;
 int * compareWStrPatternComp ;
 int * compareWStrVal ;

__attribute__((used)) static __compar_fn_t getFilterComparator(int32_t type, int32_t filterType, int32_t optr) {
  __compar_fn_t comparator = ((void*)0);

  switch (type) {
    case 128:
    case 129:
    case 131:
    case 136:
    case 134: {
      if (filterType >= 134 && filterType <= 136) {
        comparator = compareIntVal;
      } else if (filterType >= 132 && filterType <= 133) {
        comparator = compareIntDoubleVal;
      }
      break;
    }

    case 132:
    case 133: {
      if (filterType >= 134 && filterType <= 136) {
        comparator = compareDoubleIntVal;
      } else if (filterType >= 132 && filterType <= 133) {
        comparator = compareDoubleVal;
      }
      break;
    }

    case 135: {
      assert(filterType == 135);

      if (optr == TSDB_RELATION_LIKE) {
        comparator = compareStrPatternComp;
      } else {
        comparator = compareStrVal;
      }

      break;
    }

    case 130: {
      assert(filterType == 130);

      if (optr == TSDB_RELATION_LIKE) {
        comparator = compareWStrPatternComp;
      } else {
        comparator = compareWStrVal;
      }

      break;
    }
    default:
      comparator = compareIntVal;
      break;
  }

  return comparator;
}
