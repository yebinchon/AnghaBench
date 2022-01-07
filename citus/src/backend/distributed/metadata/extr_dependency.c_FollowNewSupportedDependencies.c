
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ deptype; int refobjid; int refclassid; } ;
struct TYPE_10__ {int member_0; } ;
typedef int ObjectAddressCollector ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* Form_pg_depend ;


 scalar_t__ CitusExtensionObject (TYPE_1__*) ;
 scalar_t__ DEPENDENCY_EXTENSION ;
 scalar_t__ DEPENDENCY_NORMAL ;
 scalar_t__ IsObjectAddressCollected (TYPE_1__*,int *) ;
 int IsObjectAddressOwnedByExtension (TYPE_1__*,int *) ;
 scalar_t__ IsObjectDistributed (TYPE_1__*) ;
 int ObjectAddressSet (TYPE_1__,int ,int ) ;
 int SupportedDependencyByCitus (TYPE_1__*) ;

__attribute__((used)) static bool
FollowNewSupportedDependencies(ObjectAddressCollector *collector, Form_pg_depend
          pg_depend)
{
 ObjectAddress address = { 0 };
 ObjectAddressSet(address, pg_depend->refclassid, pg_depend->refobjid);
 if (pg_depend->deptype != DEPENDENCY_NORMAL &&
  pg_depend->deptype != DEPENDENCY_EXTENSION)
 {
  return 0;
 }





 if (IsObjectAddressCollected(&address, collector))
 {
  return 0;
 }





 if (IsObjectDistributed(&address))
 {
  return 0;
 }







 if (!SupportedDependencyByCitus(&address) &&
  !IsObjectAddressOwnedByExtension(&address, ((void*)0)))
 {
  return 0;
 }

 if (CitusExtensionObject(&address))
 {

  return 0;
 }

 return 1;
}
