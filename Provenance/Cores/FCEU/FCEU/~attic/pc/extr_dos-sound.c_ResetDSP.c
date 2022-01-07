
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 scalar_t__ ReadDSP (int*) ;
 scalar_t__ SBPort ;
 int delay (int) ;
 int outportb (scalar_t__,int) ;

__attribute__((used)) static int ResetDSP(void)
{
 uint8 b;

 outportb(SBPort+0x6,0x1);
 delay(10);
 outportb(SBPort+0x6,0x0);
 delay(10);

 if(ReadDSP(&b))
  if(b==0xAA)
   return(1);
 return(0);
}
