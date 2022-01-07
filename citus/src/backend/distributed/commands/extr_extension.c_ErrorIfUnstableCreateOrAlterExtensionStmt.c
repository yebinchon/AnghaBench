
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int CITUS_EXTENSIONVERSION ;
 int CITUS_MAJORVERSION ;
 int CheckAvailableVersion (int ) ;
 int ERROR ;
 char* ExtractNewExtensionVersion (int *) ;
 int MajorVersionsCompatible (char*,int ) ;
 int ereport (int ,int ) ;
 int errdetail (char*,int ,char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;

void
ErrorIfUnstableCreateOrAlterExtensionStmt(Node *parsetree)
{
 char *newExtensionVersion = ExtractNewExtensionVersion(parsetree);

 if (newExtensionVersion != ((void*)0))
 {

  if (!MajorVersionsCompatible(newExtensionVersion, CITUS_EXTENSIONVERSION))
  {
   ereport(ERROR, (errmsg("specified version incompatible with loaded "
           "Citus library"),
       errdetail("Loaded library requires %s, but %s was specified.",
           CITUS_MAJORVERSION, newExtensionVersion),
       errhint("If a newer library is present, restart the database "
         "and try the command again.")));
  }
 }
 else
 {




  CheckAvailableVersion(ERROR);
 }
}
