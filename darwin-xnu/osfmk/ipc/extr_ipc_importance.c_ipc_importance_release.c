
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ipc_importance_elem_t ;


 scalar_t__ IIE_NULL ;
 int ipc_importance_lock () ;
 int ipc_importance_release_locked (scalar_t__) ;

void
ipc_importance_release(ipc_importance_elem_t elem)
{
 if (IIE_NULL == elem)
  return;

 ipc_importance_lock();
 ipc_importance_release_locked(elem);

}
