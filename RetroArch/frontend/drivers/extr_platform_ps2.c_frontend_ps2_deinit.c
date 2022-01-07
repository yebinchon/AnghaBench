
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDVD_Stop () ;
 int CMD_EVENT_LOG_FILE_DEINIT ;
 int Exit (int ) ;
 int _free_ps2_io () ;
 int audsrv_quit () ;
 int command_event (int ,int *) ;
 int fileXioExit () ;
 int padEnd () ;
 int verbosity_disable () ;

__attribute__((used)) static void frontend_ps2_deinit(void *data)
{
   (void)data;




   _free_ps2_io();
   CDVD_Stop();
   padEnd();
   audsrv_quit();
   fileXioExit();
   Exit(0);
}
