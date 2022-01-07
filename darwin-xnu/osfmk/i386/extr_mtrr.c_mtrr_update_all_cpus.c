
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 scalar_t__ FALSE ;
 int KERN_NOT_SUPPORTED ;
 int KERN_SUCCESS ;
 int MTRR_LOCK () ;
 int MTRR_UNLOCK () ;
 int mp_rendezvous (int ,int ,int ,int *) ;
 scalar_t__ mtrr_initialized ;
 int mtrr_update_action ;
 int mtrr_update_setup ;
 int mtrr_update_teardown ;

kern_return_t
mtrr_update_all_cpus(void)
{
 if (mtrr_initialized == FALSE)
  return KERN_NOT_SUPPORTED;

 MTRR_LOCK();
 mp_rendezvous(mtrr_update_setup,
        mtrr_update_action,
        mtrr_update_teardown, ((void*)0));
 MTRR_UNLOCK();

 return KERN_SUCCESS;
}
