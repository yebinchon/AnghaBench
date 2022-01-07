
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int * ascii_literal_list ;
 char* stpcpy (char*,int ) ;

int converStringToReadable(char *str, int size, char *buf, int bufsize) {
  char *pstr = str;
  char *pbuf = buf;
  while (size > 0) {
    if (*pstr == '\0') break;
    pbuf = stpcpy(pbuf, ascii_literal_list[((uint8_t)(*pstr))]);
    pstr++;
    size--;
  }
  *pbuf = '\0';
  return 0;
}
