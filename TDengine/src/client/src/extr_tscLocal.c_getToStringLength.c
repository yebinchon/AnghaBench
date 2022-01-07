
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int32_t ;
 int sprintf (char*,char*,int) ;
 int strncasecmp (char*,char*,int) ;

__attribute__((used)) static int32_t getToStringLength(char *pData, int32_t length, int32_t type) {
  char buf[512] = {0};

  int32_t len = 0;
  int32_t MAX_BOOL_TYPE_LENGTH = 5;
  switch (type) {
    case 133:
      return length;
    case 129:
      return length;
    case 131: {





      len = sprintf(buf, "%lf", *(double *)pData);

      if (strncasecmp("nan", buf, 3) == 0) {
        len = 4;
      }
    }
      break;
    case 130: {





      len = sprintf(buf, "%f", *(float *)pData);

      if (strncasecmp("nan", buf, 3) == 0) {
        len = 4;
      }
    }
      break;
    case 128:
    case 134:
      len = sprintf(buf, "%lld", *(int64_t *)pData);
      break;
    case 132:
      len = MAX_BOOL_TYPE_LENGTH;
      break;
    default:
      len = sprintf(buf, "%d", *(int32_t *)pData);
      break;
  };
  return len;
}
