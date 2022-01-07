
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cothread_t ;


 int SCE_SYSMODULE_FIBER ;
 scalar_t__ co_active_ ;
 int sceSysmoduleLoadModule (int ) ;

cothread_t co_active(void)
{
   if(!co_active_)
   {
    sceSysmoduleLoadModule(SCE_SYSMODULE_FIBER);
      co_active_ = (cothread_t)1;
   }
   return co_active_;
}
