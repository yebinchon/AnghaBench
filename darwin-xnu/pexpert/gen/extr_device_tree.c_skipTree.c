
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int nChildren; } ;
typedef TYPE_1__* RealDTEntry ;


 TYPE_1__* skipProperties (TYPE_1__*) ;

__attribute__((used)) static RealDTEntry
skipTree(RealDTEntry root)
{
 RealDTEntry entry;
 unsigned int k;

 entry = skipProperties(root);
 if (entry == ((void*)0)) {
  return ((void*)0);
 }
 for (k = 0; k < root->nChildren; k++) {
  entry = skipTree(entry);
 }
 return entry;
}
