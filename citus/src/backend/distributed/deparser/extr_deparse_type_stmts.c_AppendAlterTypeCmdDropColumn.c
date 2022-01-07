
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ subtype; scalar_t__ behavior; int name; } ;
typedef int StringInfo ;
typedef TYPE_1__ AlterTableCmd ;


 scalar_t__ AT_DropColumn ;
 int Assert (int) ;
 scalar_t__ DROP_CASCADE ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;
 int quote_identifier (int ) ;

__attribute__((used)) static void
AppendAlterTypeCmdDropColumn(StringInfo buf, AlterTableCmd *alterTableCmd)
{
 Assert(alterTableCmd->subtype == AT_DropColumn);
 appendStringInfo(buf, " DROP ATTRIBUTE %s", quote_identifier(alterTableCmd->name));

 if (alterTableCmd->behavior == DROP_CASCADE)
 {
  appendStringInfoString(buf, " CASCADE");
 }
}
