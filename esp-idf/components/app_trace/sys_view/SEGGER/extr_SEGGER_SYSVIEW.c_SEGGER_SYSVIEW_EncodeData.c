
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int * _EncodeData (int *,char const*,unsigned int) ;

U8* SEGGER_SYSVIEW_EncodeData(U8 *pPayload, const char* pSrc, unsigned int NumBytes) {
  return _EncodeData(pPayload, pSrc, NumBytes);
}
