
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* ledger_t ;
typedef int kern_return_t ;
struct TYPE_8__ {TYPE_1__* l_template; int l_refs; } ;
struct TYPE_7__ {scalar_t__ lt_zone; } ;


 int ASSERT (int) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int LEDGER_VALID (TYPE_2__*) ;
 int OSDecrementAtomic (int *) ;
 int pmap_ledger_free (TYPE_2__*) ;
 int zfree (scalar_t__,TYPE_2__*) ;

kern_return_t
ledger_dereference(ledger_t ledger)
{
 int v;

 if (!LEDGER_VALID(ledger))
  return (KERN_INVALID_ARGUMENT);

 v = OSDecrementAtomic(&ledger->l_refs);
 ASSERT(v >= 1);


 if (v == 1) {
  if (ledger->l_template->lt_zone) {
   zfree(ledger->l_template->lt_zone, ledger);
  } else {
   pmap_ledger_free(ledger);
  }
 }

 return (KERN_SUCCESS);
}
