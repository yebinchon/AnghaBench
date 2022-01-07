
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ varattno; } ;
typedef TYPE_1__ Var ;
typedef int HeapTuple ;
typedef int Datum ;
typedef scalar_t__ AttrNumber ;


 int Anum_pg_constraint_confkey ;
 int Anum_pg_constraint_conkey ;
 int Assert (int) ;
 int CONSTROID ;
 int DatumGetArrayTypeP (int ) ;
 scalar_t__ DatumGetInt16 (int ) ;
 int INT2OID ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int deconstruct_array (int ,int ,int,int,char,int **,int *,int*) ;

__attribute__((used)) static void
ForeignConstraintFindDistKeys(HeapTuple pgConstraintTuple,
         Var *referencingDistColumn,
         Var *referencedDistColumn,
         int *referencingAttrIndex,
         int *referencedAttrIndex)
{
 Datum referencingColumnsDatum = 0;
 Datum *referencingColumnArray = ((void*)0);
 int referencingColumnCount = 0;
 Datum referencedColumnsDatum = 0;
 Datum *referencedColumnArray = ((void*)0);
 int referencedColumnCount = 0;
 bool isNull = 0;
 int attrIdx = 0;

 *referencedAttrIndex = -1;
 *referencedAttrIndex = -1;







 referencingColumnsDatum = SysCacheGetAttr(CONSTROID, pgConstraintTuple,
             Anum_pg_constraint_conkey, &isNull);
 referencedColumnsDatum = SysCacheGetAttr(CONSTROID, pgConstraintTuple,
            Anum_pg_constraint_confkey, &isNull);

 deconstruct_array(DatumGetArrayTypeP(referencingColumnsDatum), INT2OID, 2, 1,
       's', &referencingColumnArray, ((void*)0), &referencingColumnCount);
 deconstruct_array(DatumGetArrayTypeP(referencedColumnsDatum), INT2OID, 2, 1,
       's', &referencedColumnArray, ((void*)0), &referencedColumnCount);

 Assert(referencingColumnCount == referencedColumnCount);

 for (attrIdx = 0; attrIdx < referencingColumnCount; ++attrIdx)
 {
  AttrNumber referencingAttrNo = DatumGetInt16(referencingColumnArray[attrIdx]);
  AttrNumber referencedAttrNo = DatumGetInt16(referencedColumnArray[attrIdx]);

  if (referencedDistColumn != ((void*)0) &&
   referencedDistColumn->varattno == referencedAttrNo)
  {
   *referencedAttrIndex = attrIdx;
  }

  if (referencingDistColumn != ((void*)0) &&
   referencingDistColumn->varattno == referencingAttrNo)
  {
   *referencingAttrIndex = attrIdx;
  }
 }
}
