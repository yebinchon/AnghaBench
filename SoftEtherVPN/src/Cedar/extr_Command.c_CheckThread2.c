
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int THREAD ;
typedef int EVENT ;


 int INFINITE ;
 int Wait (int *,int ) ;

void CheckThread2(THREAD *thread, void *param)
{
 EVENT *e = (EVENT *)param;
 Wait(e, INFINITE);
}
