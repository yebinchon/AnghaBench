
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int hv_callbacks_t ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int hv_callbacks ;
 int hv_callbacks_enabled ;
 int hv_support_lck_mtx ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

kern_return_t
hv_set_callbacks(hv_callbacks_t callbacks) {
 kern_return_t kr = KERN_FAILURE;

 lck_mtx_lock(hv_support_lck_mtx);
 if (hv_callbacks_enabled == 0) {
  hv_callbacks = callbacks;
  hv_callbacks_enabled = 1;
  kr = KERN_SUCCESS;
 }
 lck_mtx_unlock(hv_support_lck_mtx);

 return kr;
}
