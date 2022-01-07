
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;


 int * SEGGER_SYSVIEW_EncodeU32 (int *,int ) ;
 int SEGGER_SYSVIEW_INFO_SIZE ;
 int * SEGGER_SYSVIEW_PREPARE_PACKET (int *) ;
 int SEGGER_SYSVIEW_QUANTA_U32 ;
 int SEGGER_SYSVIEW_SendPacket (int *,int *,unsigned int) ;

void SYSVIEW_RecordU32x5(unsigned Id, U32 Para0, U32 Para1, U32 Para2, U32 Para3, U32 Para4) {
      U8 aPacket[SEGGER_SYSVIEW_INFO_SIZE + 5 * SEGGER_SYSVIEW_QUANTA_U32];
      U8* pPayload;

      pPayload = SEGGER_SYSVIEW_PREPARE_PACKET(aPacket);
      pPayload = SEGGER_SYSVIEW_EncodeU32(pPayload, Para0);
      pPayload = SEGGER_SYSVIEW_EncodeU32(pPayload, Para1);
      pPayload = SEGGER_SYSVIEW_EncodeU32(pPayload, Para2);
      pPayload = SEGGER_SYSVIEW_EncodeU32(pPayload, Para3);
      pPayload = SEGGER_SYSVIEW_EncodeU32(pPayload, Para4);

      SEGGER_SYSVIEW_SendPacket(&aPacket[0], pPayload, Id);
}
