
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;


 int MB_CUR_MAX ;
 int * ascii_literal_list ;
 int mbtowc (scalar_t__*,char*,int ) ;
 int memcpy (char*,char*,int) ;
 char* stpcpy (char*,int ) ;

int convertNCharToReadable(char *str, int size, char *buf, int bufsize) {
  char *pstr = str;
  char *pbuf = buf;

  wchar_t wc;
  while (size > 0) {
    if (*pstr == '\0') break;
    int byte_width = mbtowc(&wc, pstr, MB_CUR_MAX);

    if ((int)wc < 256) {
      pbuf = stpcpy(pbuf, ascii_literal_list[(int)wc]);
    } else {
      memcpy(pbuf, pstr, byte_width);
      pbuf += byte_width;
    }
    pstr += byte_width;
  }

  *pbuf = '\0';

  return 0;
}
