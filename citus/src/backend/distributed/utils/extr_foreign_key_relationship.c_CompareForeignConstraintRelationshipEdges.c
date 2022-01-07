
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int referencingRelationOID; int referencedRelationOID; } ;
typedef TYPE_1__ ForeignConstraintRelationshipEdge ;



__attribute__((used)) static int
CompareForeignConstraintRelationshipEdges(const void *leftElement, const
            void *rightElement)
{
 const ForeignConstraintRelationshipEdge *leftEdge = *((const
                 ForeignConstraintRelationshipEdge
                 **) leftElement);
 const ForeignConstraintRelationshipEdge *rightEdge = *((const
               ForeignConstraintRelationshipEdge
               **) rightElement);

 int referencingDiff = leftEdge->referencingRelationOID -
        rightEdge->referencingRelationOID;
 int referencedDiff = leftEdge->referencedRelationOID -
       rightEdge->referencedRelationOID;

 if (referencingDiff != 0)
 {
  return referencingDiff;
 }

 return referencedDiff;
}
