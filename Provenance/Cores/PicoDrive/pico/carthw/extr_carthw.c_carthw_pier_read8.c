
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EL_UIO ;
 int PicoRead8_io (int) ;
 int SekPc ;
 int elprintf (int ,char*,int,int ) ;

__attribute__((used)) static u32 carthw_pier_read8(u32 a)
{
  if ((a & 0xffff00) != 0xa13000)
    return PicoRead8_io(a);

  if (a == 0xa1300b)
    return 0;

  elprintf(EL_UIO, "pier r8  [%06x] @%06x", a, SekPc);
  return 0;
}
