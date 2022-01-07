
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sceKernelExitGame () ;

__attribute__((used)) static void frontend_psp_shutdown(bool unused)
{
   (void)unused;




   sceKernelExitGame();

}
