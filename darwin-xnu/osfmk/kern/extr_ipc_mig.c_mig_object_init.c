
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mig_object_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int port; int const* pVtbl; } ;
typedef int IMIGObjectVtbl ;
typedef int IMIGObject ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int MACH_PORT_NULL ;
 TYPE_1__* MIG_OBJECT_NULL ;

kern_return_t
mig_object_init(
 mig_object_t mig_object,
 const IMIGObject *interface)
{
 if (mig_object == MIG_OBJECT_NULL)
  return KERN_INVALID_ARGUMENT;
 mig_object->pVtbl = (const IMIGObjectVtbl *)interface;
 mig_object->port = MACH_PORT_NULL;
 return KERN_SUCCESS;
}
