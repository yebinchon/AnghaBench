
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z80irqvector; int Z80PC_BASE; int Z80PC; int Z80SP_BASE; int Z80SP; scalar_t__ Z80IF; scalar_t__ Z80IM; scalar_t__ Z80I; } ;


 int CZ80 ;
 int CZ80_SP ;
 int Cz80_Reset (int *) ;
 int Cz80_Set_Reg (int *,int ,int) ;
 int PAHW_SMS ;
 int PicoAHW ;
 size_t Z80_MEM_SHIFT ;
 TYPE_1__ drZ80 ;
 size_t drz80_sp_base ;
 int* z80_read_map ;

void z80_reset(void)
{
}
