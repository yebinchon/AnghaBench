
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int RangeVar ;
typedef int Oid ;
typedef int List ;


 int InvalidOid ;
 int * NIL ;
 int NoLock ;
 int RangeVarGetRelid (int *,int ,int) ;
 int * makeRangeVarFromNameList (int *) ;
 int * textToQualifiedNameList (int *) ;

Oid
ResolveRelationId(text *relationName, bool missingOk)
{
 List *relationNameList = NIL;
 RangeVar *relation = ((void*)0);
 Oid relationId = InvalidOid;


 relationNameList = textToQualifiedNameList(relationName);
 relation = makeRangeVarFromNameList(relationNameList);
 relationId = RangeVarGetRelid(relation, NoLock, missingOk);

 return relationId;
}
