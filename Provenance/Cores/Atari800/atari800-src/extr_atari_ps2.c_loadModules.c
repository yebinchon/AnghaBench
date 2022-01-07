
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Log_print (char*,...) ;
 int MC_TYPE_MC ;
 int PS2KBD_READMODE_RAW ;
 scalar_t__ PS2KbdInit () ;
 int PS2KbdSetReadmode (int ) ;
 int SifExecModuleBuffer (int ,int ,int ,int *,int*) ;
 int SifInitRpc (int ) ;
 int SifLoadModule (char*,int ,int *) ;
 int SleepThread () ;
 int audsrv ;
 int mcInit (int ) ;
 int ps2kbd ;
 int size_audsrv ;
 int size_ps2kbd ;
 int size_usbd ;
 int usbd ;

void loadModules(void)
{
 int ret;


 ret = SifLoadModule("rom0:SIO2MAN", 0, ((void*)0));
 if (ret < 0) {
  Log_print("Sio2man loading failed: %d", ret);
  SleepThread();
 }


 SifLoadModule("rom0:MCMAN", 0, ((void*)0));


 SifLoadModule("rom0:MCSERV", 0, ((void*)0));


 ret = SifLoadModule("rom0:PADMAN", 0, ((void*)0));
 if (ret < 0) {
  Log_print("Padman loading failed: %d", ret);
  SleepThread();
 }

 mcInit(MC_TYPE_MC);


 SifInitRpc(0);

 SifExecModuleBuffer(usbd, size_usbd, 0, ((void*)0), &ret);
 SifExecModuleBuffer(ps2kbd, size_ps2kbd, 0, ((void*)0), &ret);

 if (PS2KbdInit() == 0) {
  Log_print("Failed to Init Keyboard.");
 }
 PS2KbdSetReadmode(PS2KBD_READMODE_RAW);







}
