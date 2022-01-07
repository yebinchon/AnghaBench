
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int CITUS_EXTENSIONVERSION ;
 int CITUS_MAJORVERSION ;
 int CitusHasBeenLoaded () ;
 int EnableVersionChecks ;
 char* InstalledExtensionVersion () ;
 int MajorVersionsCompatible (char*,int ) ;
 int ereport (int,int ) ;
 int errdetail (char*,int ,char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static bool
CheckInstalledVersion(int elevel)
{
 char *installedVersion = ((void*)0);

 Assert(CitusHasBeenLoaded());
 Assert(EnableVersionChecks);

 installedVersion = InstalledExtensionVersion();

 if (!MajorVersionsCompatible(installedVersion, CITUS_EXTENSIONVERSION))
 {
  ereport(elevel, (errmsg("loaded Citus library version differs from installed "
        "extension version"),
       errdetail("Loaded library requires %s, but the installed "
           "extension version is %s.", CITUS_MAJORVERSION,
           installedVersion),
       errhint("Run ALTER EXTENSION citus UPDATE and try again.")));
  return 0;
 }

 return 1;
}
