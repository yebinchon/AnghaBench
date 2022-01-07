
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __card_rand () ;
 int __card_srand (int) ;
 int gettick () ;

__attribute__((used)) static u32 __card_initval()
{
 u32 ticks = gettick();

 __card_srand(ticks);
 return ((0x7FEC8000|__card_rand())&~0x00000fff);
}
