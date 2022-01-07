
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_7__ {scalar_t__ vartype; scalar_t__ vartypmod; scalar_t__ varcollid; } ;
typedef TYPE_1__ Var ;
struct TYPE_9__ {int opfuncid; int opresulttype; } ;
struct TYPE_8__ {scalar_t__ operatorId; scalar_t__ operatorClassInputType; char typeType; } ;
typedef TYPE_2__ OperatorCacheEntry ;
typedef TYPE_3__ OpExpr ;
typedef scalar_t__ Oid ;
typedef int Expr ;
typedef int Const ;


 scalar_t__ BTREE_AM_OID ;
 int COERCE_IMPLICIT_CAST ;
 scalar_t__ InvalidOid ;
 TYPE_2__* LookupOperatorByType (scalar_t__,scalar_t__,int ) ;
 char TYPTYPE_PSEUDO ;
 int get_func_rettype (int ) ;
 int get_opcode (scalar_t__) ;
 int * makeNullConst (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ makeRelabelType (int *,scalar_t__,int,scalar_t__,int ) ;
 scalar_t__ make_opclause (scalar_t__,scalar_t__,int,int *,int *,scalar_t__,scalar_t__) ;

OpExpr *
MakeOpExpression(Var *variable, int16 strategyNumber)
{
 Oid typeId = variable->vartype;
 Oid typeModId = variable->vartypmod;
 Oid collationId = variable->varcollid;

 OperatorCacheEntry *operatorCacheEntry = ((void*)0);
 Oid accessMethodId = BTREE_AM_OID;
 Oid operatorId = InvalidOid;
 Oid operatorClassInputType = InvalidOid;
 Const *constantValue = ((void*)0);
 OpExpr *expression = ((void*)0);
 char typeType = 0;

 operatorCacheEntry = LookupOperatorByType(typeId, accessMethodId, strategyNumber);

 operatorId = operatorCacheEntry->operatorId;
 operatorClassInputType = operatorCacheEntry->operatorClassInputType;
 typeType = operatorCacheEntry->typeType;






 if (operatorClassInputType != typeId && typeType != TYPTYPE_PSEUDO)
 {
  variable = (Var *) makeRelabelType((Expr *) variable, operatorClassInputType,
             -1, collationId, COERCE_IMPLICIT_CAST);
 }

 constantValue = makeNullConst(operatorClassInputType, typeModId, collationId);


 expression = (OpExpr *) make_opclause(operatorId,
            InvalidOid,
            0,
            (Expr *) variable,
            (Expr *) constantValue,
            InvalidOid, collationId);


 expression->opfuncid = get_opcode(operatorId);
 expression->opresulttype = get_func_rettype(expression->opfuncid);

 return expression;
}
