
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int objectId; } ;
typedef TYPE_1__ ObjectAddress ;


 int CreateTypeStmtByObjectAddress (TYPE_1__ const*) ;
 char const* DeparseTreeNode (int ) ;
 int ERROR ;
 char const* GetFunctionDDLCommand (int ,int) ;


 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int getObjectClass (TYPE_1__ const*) ;

__attribute__((used)) static const char *
CreateStmtByObjectAddress(const ObjectAddress *address)
{
 switch (getObjectClass(address))
 {
  case 129:
  {
   return GetFunctionDDLCommand(address->objectId, 0);
  }

  case 128:
  {
   return DeparseTreeNode(CreateTypeStmtByObjectAddress(address));
  }

  default:
  {
   ereport(ERROR, (errmsg(
        "unsupported object to construct a create statement")));
  }
 }
}
