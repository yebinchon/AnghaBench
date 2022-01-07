
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ subtype; scalar_t__ behavior; int def; int name; } ;
typedef int StringInfo ;
typedef TYPE_1__ AlterTableCmd ;


 scalar_t__ AT_AlterColumnType ;
 int AppendColumnDef (int ,int ) ;
 int Assert (int) ;
 int ColumnDef ;
 scalar_t__ DROP_CASCADE ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;
 int castNode (int ,int ) ;
 int quote_identifier (int ) ;

__attribute__((used)) static void
AppendAlterTypeCmdAlterColumnType(StringInfo buf, AlterTableCmd *alterTableCmd)
{
 Assert(alterTableCmd->subtype == AT_AlterColumnType);
 appendStringInfo(buf, " ALTER ATTRIBUTE %s SET DATA TYPE ", quote_identifier(
       alterTableCmd->name));
 AppendColumnDef(buf, castNode(ColumnDef, alterTableCmd->def));

 if (alterTableCmd->behavior == DROP_CASCADE)
 {
  appendStringInfoString(buf, " CASCADE");
 }
}
