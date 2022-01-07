
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static void __buildchecksum(u16 *buffer,u16 *c1,u16 *c2)
{
 u32 i;

 *c1 = 0;
 *c2 = 0;
 for(i=0;i<4;i++) {
  *c1 += buffer[6+i];
  *c2 += buffer[6+i]^-1;
 }
}
