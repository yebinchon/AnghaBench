
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sceKernelExitGame () ;

__attribute__((used)) static int exit_callback(int arg1, int arg2, void *common)
{
 sceKernelExitGame();
 return 0;
}
