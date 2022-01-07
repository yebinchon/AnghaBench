
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dependencyList; int member_0; } ;
typedef TYPE_1__ ObjectAddressCollector ;
typedef int ObjectAddress ;
typedef int List ;


 int ApplyAddToDependencyList ;
 int ExpandCitusSupportedTypes ;
 int FollowNewSupportedDependencies ;
 int InitObjectAddressCollector (TYPE_1__*) ;
 int recurse_pg_depend (int const*,int *,int *,int *,TYPE_1__*) ;

List *
GetDependenciesForObject(const ObjectAddress *target)
{
 ObjectAddressCollector collector = { 0 };

 InitObjectAddressCollector(&collector);

 recurse_pg_depend(target,
       &ExpandCitusSupportedTypes,
       &FollowNewSupportedDependencies,
       &ApplyAddToDependencyList,
       &collector);

 return collector.dependencyList;
}
