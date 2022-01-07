
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GETHOSTNAME_TYPE_ARG2 ;


 char* getenv (char*) ;
 int gethostname (char*,int ) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char const*,int ) ;

int Curl_gethostname(char *name, GETHOSTNAME_TYPE_ARG2 namelen)
{



  (void) name;
  (void) namelen;
  return -1;
}
