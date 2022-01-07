
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAHW_32X ;
 int * Pico32xMem ;
 int PicoAHW ;
 int msh2 ;
 int plat_munmap (int *,int) ;
 int sh2_finish (int *) ;
 int ssh2 ;

void PicoUnload32x(void)
{
  if (Pico32xMem != ((void*)0))
    plat_munmap(Pico32xMem, sizeof(*Pico32xMem));
  Pico32xMem = ((void*)0);
  sh2_finish(&msh2);
  sh2_finish(&ssh2);

  PicoAHW &= ~PAHW_32X;
}
