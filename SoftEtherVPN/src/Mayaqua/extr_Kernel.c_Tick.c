
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int KS_GETTICK_COUNT ;
 int KS_INC (int ) ;
 int OSGetTick () ;

UINT Tick()
{

 KS_INC(KS_GETTICK_COUNT);
 return OSGetTick();
}
