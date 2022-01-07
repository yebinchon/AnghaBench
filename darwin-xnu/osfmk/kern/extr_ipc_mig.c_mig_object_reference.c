
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* mig_object_t ;
struct TYPE_6__ {TYPE_1__* pVtbl; } ;
struct TYPE_5__ {int (* AddRef ) (int *) ;} ;
typedef int IMIGObject ;


 TYPE_2__* MIG_OBJECT_NULL ;
 int assert (int) ;
 int stub1 (int *) ;

void
mig_object_reference(
 mig_object_t mig_object)
{
 assert(mig_object != MIG_OBJECT_NULL);
 mig_object->pVtbl->AddRef((IMIGObject *)mig_object);
}
