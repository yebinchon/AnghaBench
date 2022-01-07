
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_set_t ;
typedef int ipc_kobject_t ;
struct TYPE_3__ {int pset_name_self; int pset_self; } ;


 int IKOT_PSET ;
 int IKOT_PSET_NAME ;
 int ipc_kobject_set (int ,int ,int ) ;

void
ipc_pset_enable(
 processor_set_t pset)
{
 ipc_kobject_set(pset->pset_self, (ipc_kobject_t) pset, IKOT_PSET);
 ipc_kobject_set(pset->pset_name_self, (ipc_kobject_t) pset, IKOT_PSET_NAME);
}
