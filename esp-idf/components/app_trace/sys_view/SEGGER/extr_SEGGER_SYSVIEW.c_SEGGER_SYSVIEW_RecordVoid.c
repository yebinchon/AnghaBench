
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int RECORD_END () ;
 int RECORD_START (int ) ;
 int SEGGER_SYSVIEW_INFO_SIZE ;
 int _SendPacket (int *,int *,unsigned int) ;

void SEGGER_SYSVIEW_RecordVoid(unsigned int EventID) {
  U8* pPayloadStart;
  RECORD_START(SEGGER_SYSVIEW_INFO_SIZE);

  _SendPacket(pPayloadStart, pPayloadStart, EventID);
  RECORD_END();
}
