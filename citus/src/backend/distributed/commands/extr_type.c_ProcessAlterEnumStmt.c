
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int skipIfNewValExists; } ;
typedef int ObjectAddress ;
typedef int Node ;
typedef int List ;
typedef TYPE_1__ AlterEnumStmt ;


 int ALL_WORKERS ;
 scalar_t__ AlterEnumIsAddValue (TYPE_1__*) ;
 int DISABLE_DDL_PROPAGATION ;
 char* DeparseTreeNode (int *) ;
 int * GetObjectAddressFromParseTree (int *,int) ;
 int * NIL ;
 int RESPONSE_OKAY ;
 int SendBareOptionalCommandListToWorkersAsUser (int ,int *,int *) ;
 int ShouldPropagateAlterType (int const*) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errdetail (char*,char const*) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int * list_make2 (int ,void*) ;

void
ProcessAlterEnumStmt(AlterEnumStmt *stmt, const char *queryString)
{
 const ObjectAddress *typeAddress = ((void*)0);

 typeAddress = GetObjectAddressFromParseTree((Node *) stmt, 0);
 if (!ShouldPropagateAlterType(typeAddress))
 {
  return;
 }
 if (AlterEnumIsAddValue(stmt))
 {







  int result = 0;
  List *commands = NIL;
  const char *alterEnumStmtSql = ((void*)0);


  alterEnumStmtSql = DeparseTreeNode((Node *) stmt);

  commands = list_make2(DISABLE_DDL_PROPAGATION, (void *) alterEnumStmtSql);

  result = SendBareOptionalCommandListToWorkersAsUser(ALL_WORKERS, commands, ((void*)0));

  if (result != RESPONSE_OKAY)
  {
   const char *alterEnumStmtIfNotExistsSql = ((void*)0);
   bool oldSkipIfNewValueExists = stmt->skipIfNewValExists;


   stmt->skipIfNewValExists = 1;
   alterEnumStmtIfNotExistsSql = DeparseTreeNode((Node *) stmt);
   stmt->skipIfNewValExists = oldSkipIfNewValueExists;

   ereport(WARNING, (errmsg("not all workers applied change to enum"),
         errdetail("retry with: %s", alterEnumStmtIfNotExistsSql),
         errhint("make sure the coordinators can communicate with "
           "all workers")));
  }
 }

}
