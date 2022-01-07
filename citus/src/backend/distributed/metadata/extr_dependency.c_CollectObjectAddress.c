
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dependencyList; int dependencySet; } ;
typedef TYPE_1__ ObjectAddressCollector ;
typedef int ObjectAddress ;


 int HASH_ENTER ;
 scalar_t__ hash_search (int ,int const*,int ,int*) ;
 int lappend (int ,int *) ;

__attribute__((used)) static void
CollectObjectAddress(ObjectAddressCollector *collector, const ObjectAddress *collect)
{
 ObjectAddress *address = ((void*)0);
 bool found = 0;


 address = (ObjectAddress *) hash_search(collector->dependencySet, collect,
           HASH_ENTER, &found);

 if (!found)
 {

  *address = *collect;
 }


 collector->dependencyList = lappend(collector->dependencyList, address);
}
