
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int refobjid; int refclassid; } ;
struct TYPE_7__ {int member_0; } ;
typedef int ObjectAddressCollector ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* Form_pg_depend ;


 int CollectObjectAddress (int *,TYPE_1__*) ;
 scalar_t__ IsObjectAddressOwnedByExtension (TYPE_1__*,int *) ;
 int ObjectAddressSet (TYPE_1__,int ,int ) ;

__attribute__((used)) static void
ApplyAddToDependencyList(ObjectAddressCollector *collector, Form_pg_depend pg_depend)
{
 ObjectAddress address = { 0 };
 ObjectAddressSet(address, pg_depend->refclassid, pg_depend->refobjid);





 if (IsObjectAddressOwnedByExtension(&address, ((void*)0)))
 {
  return;
 }

 CollectObjectAddress(collector, &address);
}
