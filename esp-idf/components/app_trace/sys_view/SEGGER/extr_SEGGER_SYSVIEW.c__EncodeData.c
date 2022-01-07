
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;



__attribute__((used)) static U8* _EncodeData(U8* pPayload, const char* pSrc, unsigned int NumBytes) {
  unsigned int n;

  n = 0;
  *pPayload++ = NumBytes;
  while (n < NumBytes) {
    *pPayload++ = *pSrc++;
    n++;
  }
  return pPayload;
}
