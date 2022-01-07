
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PicoRead16_io (int) ;
 int carthw_Xin1_do (int,int,int) ;

__attribute__((used)) static u32 carthw_radica_read16(u32 a)
{
 if ((a & 0xffff00) != 0xa13000)
  return PicoRead16_io(a);

 carthw_Xin1_do(a, 0x7e, 15);

 return 0;
}
