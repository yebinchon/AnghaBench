
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectAddress ;


 int ERROR ;
 char* GenerateBackupNameForProcCollision (int const*) ;
 char* GenerateBackupNameForTypeCollision (int const*) ;


 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int getObjectClass (int const*) ;

__attribute__((used)) static char *
GenerateBackupNameForCollision(const ObjectAddress *address)
{
 switch (getObjectClass(address))
 {
  case 129:
  {
   return GenerateBackupNameForProcCollision(address);
  }

  case 128:
  {
   return GenerateBackupNameForTypeCollision(address);
  }

  default:
  {
   ereport(ERROR, (errmsg("unsupported object to construct a rename statement"),
       errdetail(
        "unable to generate a backup name for the old type")));
  }
 }
}
