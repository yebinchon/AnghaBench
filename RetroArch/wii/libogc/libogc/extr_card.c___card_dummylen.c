
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __card_rand () ;
 int __card_srand (int) ;
 int gettick () ;

__attribute__((used)) static u32 __card_dummylen()
{
 u32 ticks = gettick();
 u32 val = 0,cnt = 0,shift = 1;

 __card_srand(ticks);
 val = (__card_rand()&0x1f)+1;

 do {
  ticks = gettick();
  val = ticks<<shift;
  shift++;
  if(shift>16) shift = 1;
  __card_srand(val);
  val = (__card_rand()&0x1f)+1;
  cnt++;
 }while(val<4 && cnt<10);
 if(val<4) val = 4;

 return val;

}
