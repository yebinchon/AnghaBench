
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ behavior; int removeType; int objects; scalar_t__ missing_ok; } ;
typedef int StringInfo ;
typedef TYPE_1__ DropStmt ;


 int AppendFunctionNameList (int ,int ,int ) ;
 scalar_t__ DROP_CASCADE ;
 int ObjectTypeToKeyword (int ) ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;

__attribute__((used)) static void
AppendDropFunctionStmt(StringInfo buf, DropStmt *stmt)
{
 appendStringInfo(buf, "DROP %s ", ObjectTypeToKeyword(stmt->removeType));

 if (stmt->missing_ok)
 {
  appendStringInfoString(buf, "IF EXISTS ");
 }

 AppendFunctionNameList(buf, stmt->objects, stmt->removeType);

 if (stmt->behavior == DROP_CASCADE)
 {
  appendStringInfoString(buf, " CASCADE");
 }

 appendStringInfoString(buf, ";");
}
