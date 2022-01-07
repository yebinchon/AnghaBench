
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * baseQualifierList; } ;
typedef TYPE_1__ QualifierWalkerContext ;
typedef int Node ;
typedef int List ;
typedef int FromExpr ;


 int ExtractFromExpressionWalker (int *,TYPE_1__*) ;
 int * NIL ;
 int * copyObject (int *) ;
 TYPE_1__* palloc0 (int) ;

List *
WhereClauseList(FromExpr *fromExpr)
{
 FromExpr *fromExprCopy = copyObject(fromExpr);
 QualifierWalkerContext *walkerContext = palloc0(sizeof(QualifierWalkerContext));
 List *whereClauseList = NIL;

 ExtractFromExpressionWalker((Node *) fromExprCopy, walkerContext);
 whereClauseList = walkerContext->baseQualifierList;

 return whereClauseList;
}
