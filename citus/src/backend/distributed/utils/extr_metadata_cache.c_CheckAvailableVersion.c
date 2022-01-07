
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* AvailableExtensionVersion () ;
 int CITUS_EXTENSIONVERSION ;
 int CITUS_MAJORVERSION ;
 int EnableVersionChecks ;
 int MajorVersionsCompatible (char*,int ) ;
 int ereport (int,int ) ;
 int errdetail (char*,int ,char*) ;
 int errhint (char*) ;
 int errmsg (char*) ;

bool
CheckAvailableVersion(int elevel)
{
 char *availableVersion = ((void*)0);

 if (!EnableVersionChecks)
 {
  return 1;
 }

 availableVersion = AvailableExtensionVersion();

 if (!MajorVersionsCompatible(availableVersion, CITUS_EXTENSIONVERSION))
 {
  ereport(elevel, (errmsg("loaded Citus library version differs from latest "
        "available extension version"),
       errdetail("Loaded library requires %s, but the latest control "
           "file specifies %s.", CITUS_MAJORVERSION,
           availableVersion),
       errhint("Restart the database to load the latest Citus "
         "library.")));
  return 0;
 }

 return 1;
}
