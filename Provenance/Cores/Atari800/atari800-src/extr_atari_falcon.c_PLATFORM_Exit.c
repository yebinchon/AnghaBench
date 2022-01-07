
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blnk_time; } ;


 int Clocky_SS (int ) ;
 int Clocky_SSval ;
 int END_UPDATE ;
 int FMD_FINISH ;
 int HOST_HEIGHT ;
 int HOST_WIDTH ;
 int Log_flushlog () ;
 scalar_t__ MONITOR_Run () ;
 int M_ON ;
 int NOVA_SSval ;
 TYPE_1__* NOVA_xcb ;
 int SetupEmulatedEnvironment () ;
 int ShutdownEmulatedEnvironment () ;
 int appl_exit () ;
 int form_dial (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int free (scalar_t__) ;
 int graf_mouse (int ,int *) ;
 scalar_t__ new_videoram ;
 int wind_update (int ) ;

int PLATFORM_Exit(int run_monitor)
{
 ShutdownEmulatedEnvironment();





 if (run_monitor) {
  if (MONITOR_Run()) {
   SetupEmulatedEnvironment();

   return 1;
  }
 }

 if (new_videoram)
  free(new_videoram);


 wind_update(END_UPDATE);
 form_dial(FMD_FINISH, 0, 0, 0, 0, 0, 0, HOST_WIDTH, HOST_HEIGHT);
 graf_mouse(M_ON, ((void*)0));

 appl_exit();







 return 0;
}
