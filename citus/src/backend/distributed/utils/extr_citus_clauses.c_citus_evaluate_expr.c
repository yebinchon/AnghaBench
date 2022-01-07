
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32 ;
typedef int int16 ;
struct TYPE_9__ {int es_query_cxt; } ;
struct TYPE_8__ {int * ps_ExprContext; } ;
typedef TYPE_1__ PlanState ;
typedef int Oid ;
typedef int Node ;
typedef int MemoryContext ;
typedef int ExprState ;
typedef int ExprContext ;
typedef int Expr ;
typedef TYPE_2__ EState ;
typedef int Datum ;


 TYPE_2__* CreateExecutorState () ;
 int ExecEvalExprSwitchContext (int *,int *,int*) ;
 int * ExecInitExpr (int *,TYPE_1__*) ;
 int FreeExecutorState (TYPE_2__*) ;
 int * GetPerTupleExprContext (TYPE_2__*) ;
 int MemoryContextSwitchTo (int ) ;
 int PG_DETOAST_DATUM_COPY (int ) ;
 int PointerGetDatum (int ) ;
 int datumCopy (int ,int,int) ;
 int fix_opfuncids (int *) ;
 int get_typlenbyval (int ,int*,int*) ;
 scalar_t__ makeConst (int ,int ,int ,int,int ,int,int) ;

__attribute__((used)) static Expr *
citus_evaluate_expr(Expr *expr, Oid result_type, int32 result_typmod,
     Oid result_collation, PlanState *planState)
{
 EState *estate;
 ExprState *exprstate;
 ExprContext *econtext;
 MemoryContext oldcontext;
 Datum const_val;
 bool const_is_null;
 int16 resultTypLen;
 bool resultTypByVal;




 estate = CreateExecutorState();


 oldcontext = MemoryContextSwitchTo(estate->es_query_cxt);


 fix_opfuncids((Node *) expr);





 exprstate = ExecInitExpr(expr, planState);

 if (planState != ((void*)0))
 {

  econtext = planState->ps_ExprContext;
 }
 else
 {

  econtext = GetPerTupleExprContext(estate);
 }




 const_val = ExecEvalExprSwitchContext(exprstate, econtext, &const_is_null);


 get_typlenbyval(result_type, &resultTypLen, &resultTypByVal);


 MemoryContextSwitchTo(oldcontext);
 if (!const_is_null)
 {
  if (resultTypLen == -1)
   const_val = PointerGetDatum(PG_DETOAST_DATUM_COPY(const_val));
  else
   const_val = datumCopy(const_val, resultTypByVal, resultTypLen);
 }


 FreeExecutorState(estate);




 return (Expr *) makeConst(result_type, result_typmod, result_collation,
         resultTypLen,
         const_val, const_is_null,
         resultTypByVal);
}
