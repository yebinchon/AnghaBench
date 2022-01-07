
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int U8 ;
typedef int U32 ;
struct TYPE_3__ {unsigned int Cnt; unsigned int* pPayload; unsigned int* pPayloadStart; int pBuffer; int Options; } ;
typedef TYPE_1__ SEGGER_SYSVIEW_PRINTF_DESC ;


 int ENCODE_U32 (unsigned int*,int ) ;
 unsigned int SEGGER_SYSVIEW_MAX_STRING_LEN ;
 int SYSVIEW_EVTID_PRINT_FORMATTED ;
 unsigned int* _PreparePacket (int ) ;
 int _SendPacket (unsigned int*,unsigned int*,int ) ;

__attribute__((used)) static void _StoreChar(SEGGER_SYSVIEW_PRINTF_DESC * p, char c) {
  unsigned int Cnt;
  U8* pPayload;
  U32 Options;

  Cnt = p->Cnt;
  if ((Cnt + 1u) <= SEGGER_SYSVIEW_MAX_STRING_LEN) {
    *(p->pPayload++) = c;
    p->Cnt = Cnt + 1u;
  }



  if (p->Cnt == SEGGER_SYSVIEW_MAX_STRING_LEN) {
    *(p->pPayloadStart) = p->Cnt;
    pPayload = p->pPayload;
    Options = p->Options;
    ENCODE_U32(pPayload, Options);
    ENCODE_U32(pPayload, 0);
    _SendPacket(p->pPayloadStart, pPayload, SYSVIEW_EVTID_PRINT_FORMATTED);
    p->pPayloadStart = _PreparePacket(p->pBuffer);
    p->pPayload = p->pPayloadStart + 1u;
    p->Cnt = 0u;
  }
}
