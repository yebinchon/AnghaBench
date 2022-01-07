
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ removeType; scalar_t__ behavior; int objects; scalar_t__ missing_ok; } ;
typedef int StringInfo ;
typedef TYPE_1__ DropStmt ;


 int AppendTypeNameList (int ,int ) ;
 int Assert (int) ;
 scalar_t__ DROP_CASCADE ;
 scalar_t__ OBJECT_TYPE ;
 int appendStringInfo (int ,char*) ;
 int appendStringInfoString (int ,char*) ;

__attribute__((used)) static void
AppendDropTypeStmt(StringInfo buf, DropStmt *stmt)
{




 Assert(stmt->removeType == OBJECT_TYPE);

 appendStringInfo(buf, "DROP TYPE ");
 if (stmt->missing_ok)
 {
  appendStringInfoString(buf, "IF EXISTS ");
 }
 AppendTypeNameList(buf, stmt->objects);
 if (stmt->behavior == DROP_CASCADE)
 {
  appendStringInfoString(buf, " CASCADE");
 }
 appendStringInfoString(buf, ";");
}
