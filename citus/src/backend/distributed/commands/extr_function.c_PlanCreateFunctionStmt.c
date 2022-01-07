
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int CreateFunctionStmt ;


 int EnsureCoordinator () ;
 int EnsureSequentialModeForFunctionDDL () ;
 int * NIL ;
 int ShouldPropagateCreateFunction (int *) ;

List *
PlanCreateFunctionStmt(CreateFunctionStmt *stmt, const char *queryString)
{
 if (!ShouldPropagateCreateFunction(stmt))
 {
  return NIL;
 }

 EnsureCoordinator();

 EnsureSequentialModeForFunctionDDL();





 return NIL;
}
