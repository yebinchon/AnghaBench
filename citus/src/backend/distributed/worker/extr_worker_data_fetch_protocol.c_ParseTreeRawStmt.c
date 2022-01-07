
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Node ;
typedef int List ;


 int ApplyLogRedaction (char const*) ;
 int ERROR ;
 int LOG ;
 scalar_t__ check_log_statement (int *) ;
 int ereport (int ,int ) ;
 int errhidestmt (int) ;
 int errmsg (char*,...) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 int * pg_parse_query (char const*) ;

Node *
ParseTreeRawStmt(const char *ddlCommand)
{
 Node *parseTreeNode = ((void*)0);
 List *parseTreeList = ((void*)0);
 uint32 parseTreeCount = 0;

 parseTreeList = pg_parse_query(ddlCommand);


 if (check_log_statement(parseTreeList))
 {
  ereport(LOG, (errmsg("statement: %s", ApplyLogRedaction(ddlCommand)),
       errhidestmt(1)));
 }

 parseTreeCount = list_length(parseTreeList);
 if (parseTreeCount != 1)
 {
  ereport(ERROR, (errmsg("cannot execute multiple utility events")));
 }







 parseTreeNode = (Node *) linitial(parseTreeList);

 return parseTreeNode;
}
