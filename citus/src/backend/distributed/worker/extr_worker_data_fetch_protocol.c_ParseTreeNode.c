
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * stmt; } ;
typedef TYPE_1__ RawStmt ;
typedef int Node ;


 int * ParseTreeRawStmt (char const*) ;

Node *
ParseTreeNode(const char *ddlCommand)
{
 Node *parseTreeNode = ParseTreeRawStmt(ddlCommand);

 parseTreeNode = ((RawStmt *) parseTreeNode)->stmt;

 return parseTreeNode;
}
