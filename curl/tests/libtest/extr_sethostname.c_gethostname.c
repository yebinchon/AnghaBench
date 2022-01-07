
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GETHOSTNAME_TYPE_ARG2 ;


 char* getenv (char*) ;
 int strncpy (char*,char const*,int ) ;

int gethostname(char *name, GETHOSTNAME_TYPE_ARG2 namelen)
{
  const char *force_hostname = getenv("CURL_GETHOSTNAME");
  if(force_hostname) {
    strncpy(name, force_hostname, namelen);
    name[namelen-1] = '\0';
    return 0;
  }


  return -1;
}
