
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* coalition_t ;
struct TYPE_4__ {int ledger; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ r; } ;


 scalar_t__ COALITION_TYPE_RESOURCE ;
 int assert (int ) ;
 int ledger_dereference (int ) ;

__attribute__((used)) static void
i_coal_resource_dealloc(coalition_t coal)
{
 assert(coal && coal->type == COALITION_TYPE_RESOURCE);
 ledger_dereference(coal->r.ledger);
}
