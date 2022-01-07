
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_importance_elem_t ;


 scalar_t__ IIE_REFS (int ) ;
 int assert (int) ;
 int ipc_importance_reference_internal (int ) ;

void
ipc_importance_reference(ipc_importance_elem_t elem)
{
 assert(0 < IIE_REFS(elem));
 ipc_importance_reference_internal(elem);
}
