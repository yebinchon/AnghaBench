
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int SEGGER_SYSVIEW_LOCK () ;
 int SEGGER_SYSVIEW_UNLOCK () ;
 int _SendPacket (int *,int *,unsigned int) ;

int SEGGER_SYSVIEW_SendPacket(U8* pPacket, U8* pPayloadEnd, unsigned int EventId) {



  _SendPacket(pPacket + 4, pPayloadEnd, EventId);



  return 0;
}
