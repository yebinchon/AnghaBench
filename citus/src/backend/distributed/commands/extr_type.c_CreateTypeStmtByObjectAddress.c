
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ classId; int objectId; } ;
typedef TYPE_1__ ObjectAddress ;
typedef int Node ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ RecreateCompositeTypeStmt (int ) ;
 scalar_t__ RecreateEnumStmt (int ) ;


 scalar_t__ TypeRelationId ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int get_typtype (int ) ;

Node *
CreateTypeStmtByObjectAddress(const ObjectAddress *address)
{
 Assert(address->classId == TypeRelationId);

 switch (get_typtype(address->objectId))
 {
  case 128:
  {
   return (Node *) RecreateEnumStmt(address->objectId);
  }

  case 129:
  {
   return (Node *) RecreateCompositeTypeStmt(address->objectId);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported type to generate create statement for"),
       errdetail("only enum and composite types can be recreated")));
  }
 }
}
