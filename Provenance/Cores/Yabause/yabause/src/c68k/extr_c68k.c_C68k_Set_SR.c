
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int c68k_struc ;


 int SET_SR (int ) ;

void C68k_Set_SR(c68k_struc *cpu, u32 val)
{
    c68k_struc *CPU = cpu;
    SET_SR(val);
}
