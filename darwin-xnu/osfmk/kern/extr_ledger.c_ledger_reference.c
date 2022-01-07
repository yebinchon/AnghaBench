
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int l_refs; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int LEDGER_VALID (TYPE_1__*) ;
 int OSIncrementAtomic (int *) ;

kern_return_t
ledger_reference(ledger_t ledger)
{
 if (!LEDGER_VALID(ledger))
  return (KERN_INVALID_ARGUMENT);
 OSIncrementAtomic(&ledger->l_refs);
 return (KERN_SUCCESS);
}
