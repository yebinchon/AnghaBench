
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PicoWrite8_io (int,int) ;
 int carthw_Xin1_do (int,int,int) ;

__attribute__((used)) static void carthw_Xin1_write8(u32 a, u32 d)
{
 if ((a & 0xffff00) != 0xa13000) {
  PicoWrite8_io(a, d);
  return;
 }

 carthw_Xin1_do(a, 0x3f, 16);
}
