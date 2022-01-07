
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CARD_ERROR_READY ;
 scalar_t__ CARD_Mount (int,int ,int *) ;
 int EXI_ProbeReset () ;
 int SysArea ;
 int VIDEO_WaitVSync () ;

__attribute__((used)) static int CardMount(int slot)
{
  int tries = 0;



  *(unsigned long *) (0xCC006800) |= 1 << 13;

  while (tries < 10)
  {
    VIDEO_WaitVSync ();
    if (CARD_Mount(slot, SysArea, ((void*)0)) == CARD_ERROR_READY)
      return 1;
    else
      EXI_ProbeReset ();
    tries++;
  }
  return 0;
}
