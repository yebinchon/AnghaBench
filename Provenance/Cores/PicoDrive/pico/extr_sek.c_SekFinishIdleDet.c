
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CycloneFinishIdle () ;
 int EL_IDLE ;
 int EL_STATUS ;
 int elprintf (int,char*,unsigned short) ;
 int fm68k_emulate (int ,int) ;
 size_t idledet_count ;
 unsigned short** idledet_ptrs ;

void SekFinishIdleDet(void)
{






  while (idledet_count > 0)
  {
    unsigned short *op = idledet_ptrs[--idledet_count];
    if ((*op & 0xfd00) == 0x7100)
      *op &= 0xff, *op |= 0x6600;
    else if ((*op & 0xfd00) == 0x7500)
      *op &= 0xff, *op |= 0x6700;
    else if ((*op & 0xfd00) == 0x7d00)
      *op &= 0xff, *op |= 0x6000;
    else
      elprintf(EL_STATUS|EL_IDLE, "idle: don't know how to restore %04x", *op);
  }
}
