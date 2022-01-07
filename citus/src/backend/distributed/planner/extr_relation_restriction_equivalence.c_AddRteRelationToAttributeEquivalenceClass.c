
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ varattno; int varno; } ;
typedef TYPE_1__ Var ;
struct TYPE_15__ {int equivalentAttributes; } ;
struct TYPE_14__ {scalar_t__ varattno; int relationId; int rteIdentity; int varno; } ;
struct TYPE_13__ {scalar_t__ rtekind; int relid; } ;
typedef TYPE_2__ RangeTblEntry ;
typedef int Oid ;
typedef TYPE_3__ AttributeEquivalenceClassMember ;
typedef TYPE_4__ AttributeEquivalenceClass ;


 int Assert (int) ;
 TYPE_1__* DistPartitionKey (int ) ;
 int GetRTEIdentity (TYPE_2__*) ;
 int IsDistributedTable (int ) ;
 scalar_t__ RTE_RELATION ;
 int lappend (int ,TYPE_3__*) ;
 TYPE_3__* palloc0 (int) ;

__attribute__((used)) static void
AddRteRelationToAttributeEquivalenceClass(AttributeEquivalenceClass **
            attrEquivalenceClass,
            RangeTblEntry *rangeTableEntry,
            Var *varToBeAdded)
{
 AttributeEquivalenceClassMember *attributeEqMember = ((void*)0);
 Oid relationId = rangeTableEntry->relid;
 Var *relationPartitionKey = ((void*)0);


 if (!IsDistributedTable(relationId))
 {
  return;
 }

 relationPartitionKey = DistPartitionKey(relationId);

 Assert(rangeTableEntry->rtekind == RTE_RELATION);


 if (relationPartitionKey == ((void*)0))
 {
  return;
 }


 if (relationPartitionKey->varattno != varToBeAdded->varattno)
 {
  return;
 }

 attributeEqMember = palloc0(sizeof(AttributeEquivalenceClassMember));

 attributeEqMember->varattno = varToBeAdded->varattno;
 attributeEqMember->varno = varToBeAdded->varno;
 attributeEqMember->rteIdentity = GetRTEIdentity(rangeTableEntry);
 attributeEqMember->relationId = rangeTableEntry->relid;

 (*attrEquivalenceClass)->equivalentAttributes =
  lappend((*attrEquivalenceClass)->equivalentAttributes,
    attributeEqMember);
}
