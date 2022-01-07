
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_UIO ;
 int SekPc ;
 int elprintf (int ,char*,int,int,...) ;
 int prot_lk3_cmd ;
 int prot_lk3_data ;

__attribute__((used)) static u32 PicoRead8_plk3(u32 a)
{
  u32 d = 0;
  switch (prot_lk3_cmd) {
    case 1: d = prot_lk3_data >> 1; break;
    case 2:
      d = ((prot_lk3_data >> 4) | (prot_lk3_data << 4)) & 0xff;
      break;
    case 3:
      d = prot_lk3_data;
      d = (d >> 4) | (d << 4);
      d = ((d & 0xcc) >> 2) | ((d & 0x33) << 2);
      d = ((d & 0xaa) >> 1) | ((d & 0x55) << 1);
      break;





    default:
      elprintf(EL_UIO, "unhandled prot cmd %02x @%06x", prot_lk3_cmd, SekPc);
      break;
  }

  elprintf(EL_UIO, "prot r8  [%06x]   %02x @%06x", a, d, SekPc);
  return d;
}
