
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int EVENT ;


 int KS_INC (int ) ;
 int KS_WAIT_COUNT ;
 int OSWaitEvent (int *,int ) ;

bool Wait(EVENT *e, UINT timeout)
{

 if (e == ((void*)0))
 {
  return 0;
 }


 KS_INC(KS_WAIT_COUNT);

 return OSWaitEvent(e, timeout);
}
