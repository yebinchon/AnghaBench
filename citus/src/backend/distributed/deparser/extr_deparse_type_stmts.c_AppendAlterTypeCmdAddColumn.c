
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ subtype; int def; } ;
typedef int StringInfo ;
typedef TYPE_1__ AlterTableCmd ;


 scalar_t__ AT_AddColumn ;
 int AppendColumnDef (int ,int ) ;
 int Assert (int) ;
 int ColumnDef ;
 int appendStringInfoString (int ,char*) ;
 int castNode (int ,int ) ;

__attribute__((used)) static void
AppendAlterTypeCmdAddColumn(StringInfo buf, AlterTableCmd *alterTableCmd)
{
 Assert(alterTableCmd->subtype == AT_AddColumn);

 appendStringInfoString(buf, " ADD ATTRIBUTE ");
 AppendColumnDef(buf, castNode(ColumnDef, alterTableCmd->def));
}
