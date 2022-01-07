
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int KS_INC (int ) ;
 int KS_SLEEPTHREAD_COUNT ;
 int OSSleep (int ) ;

void SleepThread(UINT time)
{

 KS_INC(KS_SLEEPTHREAD_COUNT);

 OSSleep(time);
}
