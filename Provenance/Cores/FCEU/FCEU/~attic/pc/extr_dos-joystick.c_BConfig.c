
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;


 int UpdateJoyData () ;
 int* joyBMap ;
 int joybuttons ;
 int soundo ;
 scalar_t__ time (int ) ;

__attribute__((used)) static void BConfig(int b)
{
  int c=0;
  uint32 st=time(0);

  while(time(0)< (st+4) )
  {
   if(!soundo)
    UpdateJoyData();
   if(joybuttons) c=joybuttons;
   else if(c && !joybuttons)
   {
    joyBMap[b]=c;
    break;
   }

  }
}
