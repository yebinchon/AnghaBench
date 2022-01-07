
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int * _EncodeStr (int *,char const*,unsigned int) ;

U8* SEGGER_SYSVIEW_EncodeString(U8* pPayload, const char* s, unsigned int MaxLen) {
  return _EncodeStr(pPayload, s, MaxLen);
}
