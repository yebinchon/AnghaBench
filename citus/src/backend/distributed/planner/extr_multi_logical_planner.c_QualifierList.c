
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int outerJoinQualifierList; int baseQualifierList; } ;
typedef TYPE_1__ QualifierWalkerContext ;
typedef int Node ;
typedef int List ;
typedef int FromExpr ;


 int ExtractFromExpressionWalker (int *,TYPE_1__*) ;
 int * NIL ;
 int * copyObject (int *) ;
 int * list_concat (int *,int ) ;
 TYPE_1__* palloc0 (int) ;

List *
QualifierList(FromExpr *fromExpr)
{
 FromExpr *fromExprCopy = copyObject(fromExpr);
 QualifierWalkerContext *walkerContext = palloc0(sizeof(QualifierWalkerContext));
 List *qualifierList = NIL;

 ExtractFromExpressionWalker((Node *) fromExprCopy, walkerContext);
 qualifierList = list_concat(qualifierList, walkerContext->baseQualifierList);
 qualifierList = list_concat(qualifierList, walkerContext->outerJoinQualifierList);

 return qualifierList;
}
