
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PicoWrite8_z80 (int,int) ;

__attribute__((used)) static void PicoWrite16_z80(u32 a, u32 d)
{


  PicoWrite8_z80(a, d >> 8);
}
