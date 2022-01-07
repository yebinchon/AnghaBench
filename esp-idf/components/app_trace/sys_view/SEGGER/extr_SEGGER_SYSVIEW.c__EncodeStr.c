
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;



__attribute__((used)) static U8 *_EncodeStr(U8 *pPayload, const char *pText, unsigned int Limit) {
  unsigned int n;
  unsigned int Len;



  Len = 0;
  while(*(pText + Len) != 0) {
    Len++;
  }
  if (Len > Limit) {
    Len = Limit;
  }



  if (Len < 255) {
    *pPayload++ = Len;
  } else {
    *pPayload++ = 255;
    *pPayload++ = (Len & 255);
    *pPayload++ = ((Len >> 8) & 255);
  }



  n = 0;
  while (n < Len) {
    *pPayload++ = *pText++;
    n++;
  }
  return pPayload;
}
