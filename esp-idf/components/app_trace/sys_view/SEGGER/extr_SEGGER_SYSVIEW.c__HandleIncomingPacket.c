
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;


 int CHANNEL_ID_DOWN ;
 int SEGGER_RTT_ReadNoLock (int ,int*,int) ;
 int SEGGER_SYSVIEW_GetSysDesc () ;
 int SEGGER_SYSVIEW_RecordSystime () ;
 int SEGGER_SYSVIEW_SendModule (int) ;
 int SEGGER_SYSVIEW_SendModuleDescription () ;
 int SEGGER_SYSVIEW_SendNumModules () ;
 int SEGGER_SYSVIEW_SendTaskList () ;
 int SEGGER_SYSVIEW_Start () ;
 int SEGGER_SYSVIEW_Stop () ;

__attribute__((used)) static void _HandleIncomingPacket(void) {
  U8 Cmd;
  int Status;

  Status = SEGGER_RTT_ReadNoLock(CHANNEL_ID_DOWN, &Cmd, 1);
  if (Status > 0) {
    switch (Cmd) {
    case 129:
      SEGGER_SYSVIEW_Start();
      break;
    case 128:
      SEGGER_SYSVIEW_Stop();
      break;
    case 131:
      SEGGER_SYSVIEW_RecordSystime();
      break;
    case 130:
      SEGGER_SYSVIEW_SendTaskList();
      break;
    case 132:
      SEGGER_SYSVIEW_GetSysDesc();
      break;
    case 133:
      SEGGER_SYSVIEW_SendNumModules();
      break;
    case 134:
      SEGGER_SYSVIEW_SendModuleDescription();
      break;
    case 135:
      Status = SEGGER_RTT_ReadNoLock(CHANNEL_ID_DOWN, &Cmd, 1);
      if (Status > 0) {
        SEGGER_SYSVIEW_SendModule(Cmd);
      }
      break;
    default:
      if (Cmd >= 128) {
        SEGGER_RTT_ReadNoLock(CHANNEL_ID_DOWN, &Cmd, 1);
      }
      break;
    }
  }
}
