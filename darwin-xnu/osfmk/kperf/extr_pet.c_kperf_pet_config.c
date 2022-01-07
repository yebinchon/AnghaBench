
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kern_return_t ;


 int BUF_INFO (int ,int,unsigned int) ;
 scalar_t__ KERN_SUCCESS ;
 int PERF_PET_THREAD ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 unsigned int pet_action_id ;
 scalar_t__ pet_init () ;
 int pet_lock ;
 int pet_start () ;
 int pet_stop () ;

void
kperf_pet_config(unsigned int action_id)
{
 kern_return_t kr = pet_init();
 if (kr != KERN_SUCCESS) {
  return;
 }

 lck_mtx_lock(pet_lock);

 BUF_INFO(PERF_PET_THREAD, 3, action_id);

 if (action_id == 0) {
  pet_stop();
 } else {
  pet_start();
 }

 pet_action_id = action_id;

 lck_mtx_unlock(pet_lock);
}
