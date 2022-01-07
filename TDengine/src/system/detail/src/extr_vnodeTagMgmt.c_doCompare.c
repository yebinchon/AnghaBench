
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int int32_t ;


 int DEFAULT_COMP (int ,int ) ;
 int GET_DOUBLE_VAL (char*) ;
 int GET_FLOAT_VAL (char*) ;
 int GET_INT16_VAL (char*) ;
 int GET_INT32_VAL (char*) ;
 int GET_INT64_VAL (char*) ;
 int GET_INT8_VAL (char*) ;
 int TSDB_NCHAR_SIZE ;
 int strncmp (char*,char*,size_t) ;
 int wcsncmp (int *,int *,int) ;

int32_t doCompare(char* f1, char* f2, int32_t type, int32_t size) {
  switch (type) {
    case 131: DEFAULT_COMP(GET_INT32_VAL(f1), GET_INT32_VAL(f2));
    case 133: DEFAULT_COMP(GET_DOUBLE_VAL(f1), GET_DOUBLE_VAL(f2));
    case 132: DEFAULT_COMP(GET_FLOAT_VAL(f1), GET_FLOAT_VAL(f2));
    case 135: DEFAULT_COMP(GET_INT64_VAL(f1), GET_INT64_VAL(f2));
    case 129: DEFAULT_COMP(GET_INT16_VAL(f1), GET_INT16_VAL(f2));
    case 128:
    case 134: DEFAULT_COMP(GET_INT8_VAL(f1), GET_INT8_VAL(f2));
    case 130: {
      int32_t ret = wcsncmp((wchar_t*) f1, (wchar_t*) f2, size/TSDB_NCHAR_SIZE);
      if (ret == 0) {
          return ret;
      }
      return (ret < 0) ? -1 : 1;
    }
    default: {
      int32_t ret = strncmp(f1, f2, (size_t)size);
      if (ret == 0) {
        return ret;
      }

      return (ret < 0) ? -1 : 1;
    }
  }
}
