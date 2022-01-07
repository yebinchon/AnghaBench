
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RenameStmt ;
typedef int ObjectAddress ;


 int * CreateRenameProcStmt (int const*,char*) ;
 int * CreateRenameTypeStmt (int const*,char*) ;
 int ERROR ;


 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int getObjectClass (int const*) ;

__attribute__((used)) static RenameStmt *
CreateRenameStatement(const ObjectAddress *address, char *newName)
{
 switch (getObjectClass(address))
 {
  case 129:
  {
   return CreateRenameProcStmt(address, newName);
  }

  case 128:
  {
   return CreateRenameTypeStmt(address, newName);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported object to construct a rename statement"),
       errdetail("unable to generate a parsetree for the rename")));
  }
 }
}
