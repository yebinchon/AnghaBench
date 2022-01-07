
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ledger_t ;
struct TYPE_4__ {int l_refs; } ;


 int LEDGER_VALID (TYPE_1__*) ;

int
ledger_reference_count(ledger_t ledger)
{
 if (!LEDGER_VALID(ledger))
  return (-1);

 return (ledger->l_refs);
}
