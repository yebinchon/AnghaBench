
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int isPartial; int addedToPruningInstances; } ;
typedef TYPE_1__ PruningInstance ;


 int Assert (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* palloc (int) ;

__attribute__((used)) static PruningInstance *
CopyPartialPruningInstance(PruningInstance *sourceInstance)
{
 PruningInstance *newInstance = palloc(sizeof(PruningInstance));

 Assert(sourceInstance->isPartial);






 memcpy(newInstance, sourceInstance, sizeof(PruningInstance));
 newInstance->addedToPruningInstances = 0;
 newInstance->isPartial = 0;

 return newInstance;
}
