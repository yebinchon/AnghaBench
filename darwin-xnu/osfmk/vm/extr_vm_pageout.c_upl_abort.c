
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* upl_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_5__ {int size; } ;


 int KERN_INVALID_ARGUMENT ;
 TYPE_1__* UPL_NULL ;
 int upl_abort_range (TYPE_1__*,int ,int ,int,int *) ;

kern_return_t
upl_abort(
 upl_t upl,
 int error)
{
 boolean_t empty;

 if (upl == UPL_NULL)
  return KERN_INVALID_ARGUMENT;

 return upl_abort_range(upl, 0, upl->size, error, &empty);
}
