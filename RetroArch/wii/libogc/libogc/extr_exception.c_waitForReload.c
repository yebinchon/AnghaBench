
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FALSE ;
 int PAD_BUTTON_A ;
 int PAD_ButtonsDown (int ) ;
 int PAD_Init () ;
 int PAD_ScanPads () ;
 int PAD_TRIGGER_Z ;
 int SYS_HOTRESET ;
 scalar_t__ SYS_ResetButtonDown () ;
 int SYS_ResetSystem (int ,int ,int ) ;
 int _CPU_ISR_Disable (int ) ;
 int __reload () ;
 int kprintf (char*,...) ;
 int reload_timer ;
 int udelay (int) ;

__attribute__((used)) static void waitForReload()
{
 u32 level;

 PAD_Init();

 if(reload_timer > 0)
  kprintf("\n\tReloading in %d seconds\n", reload_timer/50);

 while ( 1 )
 {
  PAD_ScanPads();

  int buttonsDown = PAD_ButtonsDown(0);

  if( (buttonsDown & PAD_TRIGGER_Z) || SYS_ResetButtonDown() ||
   reload_timer == 0 )
  {
   kprintf("\n\tReload\n\n\n");
   _CPU_ISR_Disable(level);
   __reload ();
  }

  if ( buttonsDown & PAD_BUTTON_A )
  {
   kprintf("\n\tReset\n\n\n");



   __reload ();

  }

  udelay(20000);
  if(reload_timer > 0)
   reload_timer--;
 }
}
