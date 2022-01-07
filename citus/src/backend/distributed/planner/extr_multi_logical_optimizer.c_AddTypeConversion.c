
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef int Expr ;


 int Assert (int ) ;
 int COERCE_EXPLICIT_CAST ;
 int COERCION_EXPLICIT ;
 int * coerce_to_target_type (int *,int *,scalar_t__,scalar_t__,int ,int ,int ,int) ;
 scalar_t__ exprType (int *) ;
 int exprTypmod (int *) ;

__attribute__((used)) static Expr *
AddTypeConversion(Node *originalAggregate, Node *newExpression)
{
 Oid newTypeId = exprType(newExpression);
 Oid originalTypeId = exprType(originalAggregate);
 int32 originalTypeMod = exprTypmod(originalAggregate);
 Node *typeConvertedExpression = ((void*)0);


 if (originalTypeId == newTypeId)
 {
  return ((void*)0);
 }


 typeConvertedExpression = coerce_to_target_type(((void*)0), newExpression, newTypeId,
             originalTypeId, originalTypeMod,
             COERCION_EXPLICIT,
             COERCE_EXPLICIT_CAST, -1);
 Assert(typeConvertedExpression != ((void*)0));
 return (Expr *) typeConvertedExpression;
}
