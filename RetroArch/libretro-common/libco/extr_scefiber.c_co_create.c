
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ cothread_t ;
typedef int SceFiber ;


 int SCE_SYSMODULE_FIBER ;
 int _sceFiberInitializeImpl (int *,char*,int ,int ,void*,unsigned int,int *) ;
 scalar_t__ co_active_ ;
 int co_thunk ;
 void* malloc (int) ;
 int sceSysmoduleLoadModule (int ) ;

cothread_t co_create(unsigned int heapsize, void (*coentry)(void))
{
   SceFiber* tailFiber = malloc(sizeof(SceFiber));
  char * m_contextBuffer = malloc(sizeof(char)*heapsize);
  if(!co_active_)
   {
      sceSysmoduleLoadModule(SCE_SYSMODULE_FIBER);
      co_active_ = (cothread_t)1;
   }


   int ret = _sceFiberInitializeImpl(tailFiber, "tailFiber", co_thunk, (uint32_t)coentry, (void*) m_contextBuffer, heapsize, ((void*)0));
   if(ret==0){
     return (cothread_t)tailFiber;
   }else{
     return (cothread_t)ret;
   }

}
