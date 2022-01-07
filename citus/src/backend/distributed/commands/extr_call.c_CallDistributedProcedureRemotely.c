
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* funcexpr; } ;
struct TYPE_10__ {int isDistributed; } ;
struct TYPE_9__ {int funcid; } ;
typedef int Oid ;
typedef TYPE_1__ FuncExpr ;
typedef TYPE_2__ DistObjectCacheEntry ;
typedef int DestReceiver ;
typedef TYPE_3__ CallStmt ;


 int CallFuncExprRemotely (TYPE_3__*,TYPE_2__*,TYPE_1__*,int *) ;
 TYPE_2__* LookupDistObjectCacheEntry (int ,int ,int ) ;
 int ProcedureRelationId ;

bool
CallDistributedProcedureRemotely(CallStmt *callStmt, DestReceiver *dest)
{
 DistObjectCacheEntry *procedure = ((void*)0);
 FuncExpr *funcExpr = callStmt->funcexpr;
 Oid functionId = funcExpr->funcid;

 procedure = LookupDistObjectCacheEntry(ProcedureRelationId, functionId, 0);
 if (procedure == ((void*)0) || !procedure->isDistributed)
 {
  return 0;
 }

 return CallFuncExprRemotely(callStmt, procedure, funcExpr, dest);
}
