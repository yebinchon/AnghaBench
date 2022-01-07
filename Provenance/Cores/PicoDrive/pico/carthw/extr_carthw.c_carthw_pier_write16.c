
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_UIO ;
 int PicoWrite16_io (int,int) ;
 int SekPc ;
 int carthw_pier_write8 (int,int) ;
 int elprintf (int ,char*,int,int,int ) ;

__attribute__((used)) static void carthw_pier_write16(u32 a, u32 d)
{
  if ((a & 0xffff00) != 0xa13000) {
    PicoWrite16_io(a, d);
    return;
  }

  elprintf(EL_UIO, "pier w16 [%06x] %04x @%06x", a, d & 0xffff, SekPc);
  carthw_pier_write8(a + 1, d);
}
