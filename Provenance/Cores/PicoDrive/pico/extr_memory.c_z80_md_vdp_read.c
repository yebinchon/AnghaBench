
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_ANOMALY ;
 int elprintf (int ,char*,unsigned short,int) ;

__attribute__((used)) static unsigned char z80_md_vdp_read(unsigned short a)
{

  elprintf(EL_ANOMALY, "z80 invalid r8 [%06x] %02x", a, 0xff);
  return 0xff;
}
