
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;


 int ENCODE_U32 (int *,int ) ;

U8* SEGGER_SYSVIEW_EncodeU32(U8* pPayload, U32 Value) {
  ENCODE_U32(pPayload, Value);
  return pPayload;
}
