
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_UIO ;
 int SekPc ;
 int elprintf (int ,char*,int,int,int ) ;
 int prot_lk3_cmd ;
 int prot_lk3_data ;

__attribute__((used)) static void PicoWrite8_plk3p(u32 a, u32 d)
{
  elprintf(EL_UIO, "prot w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
  if (a & 2)
    prot_lk3_cmd = d;
  else
    prot_lk3_data = d;
}
