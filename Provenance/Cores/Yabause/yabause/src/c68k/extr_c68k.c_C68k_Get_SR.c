
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int c68k_struc ;


 int GET_SR ;

u32 C68k_Get_SR(c68k_struc *cpu)
{
    c68k_struc *CPU = cpu;
    return GET_SR;
}
