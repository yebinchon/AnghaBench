
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static char *tSQLOptrToString(uint8_t optr, char *dst) {
  switch (optr) {
    case 131: {
      *dst = '<';
      dst += 1;
      break;
    }
    case 130: {
      *dst = '<';
      *(dst + 1) = '=';
      dst += 2;
      break;
    }
    case 134: {
      *dst = '=';
      dst += 1;
      break;
    }
    case 133: {
      *dst = '>';
      dst += 1;
      break;
    }
    case 132: {
      *dst = '>';
      *(dst + 1) = '=';
      dst += 2;
      break;
    }
    case 129: {
      *dst = '<';
      *(dst + 1) = '>';
      dst += 2;
      break;
    }
    case 128: {
      memcpy(dst, "or", 2);
      dst += 2;
      break;
    }
    case 135: {
      memcpy(dst, "and", 3);
      dst += 3;
      break;
    }
    default:;
  }
  return dst;
}
