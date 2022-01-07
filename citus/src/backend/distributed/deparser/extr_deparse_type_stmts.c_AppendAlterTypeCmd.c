
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int subtype; } ;
typedef int StringInfo ;
typedef TYPE_1__ AlterTableCmd ;





 int AppendAlterTypeCmdAddColumn (int ,TYPE_1__*) ;
 int AppendAlterTypeCmdAlterColumnType (int ,TYPE_1__*) ;
 int AppendAlterTypeCmdDropColumn (int ,TYPE_1__*) ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errdetail (char*,int) ;
 int errmsg (char*) ;

__attribute__((used)) static void
AppendAlterTypeCmd(StringInfo buf, AlterTableCmd *alterTableCmd)
{
 switch (alterTableCmd->subtype)
 {
  case 130:
  {
   AppendAlterTypeCmdAddColumn(buf, alterTableCmd);
   break;
  }

  case 128:
  {
   AppendAlterTypeCmdDropColumn(buf, alterTableCmd);
   break;
  }

  case 129:
  {
   AppendAlterTypeCmdAlterColumnType(buf, alterTableCmd);
   break;
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported subtype for alter table command"),
       errdetail("sub command type: %d", alterTableCmd->subtype)));
  }
 }
}
