
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 scalar_t__ SBPort ;
 int inportb (scalar_t__) ;

__attribute__((used)) static int ReadDSP(uint8 *V)
{
 int x;

 for(x=65536;x;x--)
 {
  if(inportb(SBPort+0xE)&0x80)
  {
   *V=inportb(SBPort+0xA);
   return(1);
  }
 }
 return(0);
}
