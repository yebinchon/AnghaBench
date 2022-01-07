
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dependencySet; } ;
typedef TYPE_1__ ObjectAddressCollector ;
typedef int ObjectAddress ;


 int HASH_FIND ;
 int hash_search (int ,int const*,int ,int*) ;

__attribute__((used)) static bool
IsObjectAddressCollected(const ObjectAddress *findAddress,
       ObjectAddressCollector *collector)
{
 bool found = 0;


 hash_search(collector->dependencySet, findAddress, HASH_FIND, &found);

 return found;
}
