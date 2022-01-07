
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ cothread_t ;
typedef int SceFiber ;


 scalar_t__ co_active_ ;
 int sceFiberReturnToThread (int ,int *) ;
 int sceFiberRun (int *,int ,int *) ;
 int sceFiberSwitch (int *,int ,int *) ;

void co_switch(cothread_t cothread)
{

   uint32_t argOnReturn = 0;
   if(cothread == (cothread_t)1){
     co_active_ = cothread;
     sceFiberReturnToThread(0, ((void*)0));
   }else{
   SceFiber* theFiber = (SceFiber*)cothread;
   if(co_active_ == (cothread_t)1){
    co_active_ = cothread;
    sceFiberRun(theFiber, 0, &argOnReturn);
   }else{
    co_active_ = cothread;
    sceFiberSwitch(theFiber, 0, &argOnReturn);
   }
   }
}
