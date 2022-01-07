
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int CheckConninfo (char*,char const**,int ,char**) ;
 int GUC_check_errdetail (char*,char*) ;
 int lengthof (char const**) ;

__attribute__((used)) static bool
NodeConninfoGucCheckHook(char **newval, void **extra, GucSource source)
{

 const char *whitelist[] = {
  "application_name",
  "connect_timeout",



  "keepalives",
  "keepalives_count",
  "keepalives_idle",
  "keepalives_interval",



  "sslcompression",
  "sslcrl",
  "sslmode",
  "sslrootcert"
 };
 char *errorMsg = ((void*)0);
 bool conninfoValid = CheckConninfo(*newval, whitelist, lengthof(whitelist),
            &errorMsg);

 if (!conninfoValid)
 {
  GUC_check_errdetail("%s", errorMsg);
 }

 return conninfoValid;
}
