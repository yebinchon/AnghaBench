
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int visitedObjects; } ;
typedef TYPE_1__ ObjectAddressCollector ;
typedef int ObjectAddress ;


 int HASH_ENTER ;
 scalar_t__ hash_search (int ,int const*,int ,int*) ;

__attribute__((used)) static void
MarkObjectVisited(ObjectAddressCollector *collector, const ObjectAddress *target)
{
 ObjectAddress *address = ((void*)0);
 bool found = 0;


 address = (ObjectAddress *) hash_search(collector->visitedObjects, target,
           HASH_ENTER, &found);

 if (!found)
 {

  *address = *target;
 }
}
