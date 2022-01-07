
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int Bconout (int,int) ;
 int Original_Log_base ;
 int Original_Phys_base ;
 int Supexec (int ) ;
 int VsetScreen (int ,int ,int,int) ;
 int load_r ;
 scalar_t__ new_videl_mode_valid ;
 scalar_t__ original_videl_settings ;
 int * p_str_p ;
 int rem_kb ;
 int restore_original_colors () ;

void ShutdownEmulatedEnvironment(void)
{
 if (new_videl_mode_valid) {

  p_str_p = (ULONG *) original_videl_settings;
  Supexec(load_r);
  new_videl_mode_valid = 0;
  (void)VsetScreen(Original_Log_base, Original_Phys_base, -1, -1);
 }

 restore_original_colors();

 Supexec(rem_kb);

 Bconout(4, 8);
}
