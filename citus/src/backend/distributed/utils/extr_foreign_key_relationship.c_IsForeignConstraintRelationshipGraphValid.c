
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ isValid; } ;


 TYPE_1__* fConstraintRelationshipGraph ;

bool
IsForeignConstraintRelationshipGraphValid()
{
 if (fConstraintRelationshipGraph != ((void*)0) && fConstraintRelationshipGraph->isValid)
 {
  return 1;
 }

 return 0;
}
