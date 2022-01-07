
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int KEY_SELECT ;
 int KEY_START ;
 scalar_t__ aptMainLoop () ;
 int exit (int ) ;
 int fflush (int ) ;
 int hidKeysDown () ;
 int hidScanInput () ;
 int printf (char*) ;
 int select_pressed ;
 int stdout ;
 int svcSleepThread (int) ;

void wait_for_input(void)
{
   printf("\n\nPress Start.\n\n");
   fflush(stdout);

   while (aptMainLoop())
   {
      u32 kDown;

      hidScanInput();

      kDown = hidKeysDown();

      if (kDown & KEY_START)
         break;

      if (kDown & KEY_SELECT)
         exit(0);





      svcSleepThread(1000000);
   }
}
