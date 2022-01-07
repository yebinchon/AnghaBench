
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cothread_t ;
typedef int SceFiber ;


 int sceFiberFinalize (int *) ;

void co_delete(cothread_t cothread)
{
  if(cothread == (cothread_t)1){
   return;
  }
   sceFiberFinalize((SceFiber*)cothread);
}
