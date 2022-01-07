
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prompt ;
typedef int passwd ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int curlx_msnprintf (char*,int,char*,char const*,char*,...) ;
 int getpass_r (char*,char*,int) ;
 int memcpy (char*,char*,size_t) ;
 char* realloc (char*,size_t) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;

__attribute__((used)) static CURLcode checkpasswd(const char *kind,
                            const size_t i,
                            const bool last,
                            char **userpwd)
{
  char *psep;
  char *osep;

  if(!*userpwd)
    return CURLE_OK;


  psep = strchr(*userpwd, ':');


  osep = strchr(*userpwd, ';');

  if(!psep && **userpwd != ';') {

    char passwd[256] = "";
    char prompt[256];
    size_t passwdlen;
    size_t userlen = strlen(*userpwd);
    char *passptr;

    if(osep)
      *osep = '\0';


    if(!i && last)
      curlx_msnprintf(prompt, sizeof(prompt),
                      "Enter %s password for user '%s':",
                      kind, *userpwd);
    else
      curlx_msnprintf(prompt, sizeof(prompt),
                      "Enter %s password for user '%s' on URL #%zu:",
                      kind, *userpwd, i + 1);


    getpass_r(prompt, passwd, sizeof(passwd));
    passwdlen = strlen(passwd);

    if(osep)
      *osep = ';';


    passptr = realloc(*userpwd,
                      passwdlen + 1 +
                      userlen + 1);
    if(!passptr)
      return CURLE_OUT_OF_MEMORY;


    passptr[userlen] = ':';
    memcpy(&passptr[userlen + 1], passwd, passwdlen + 1);
    *userpwd = passptr;
  }

  return CURLE_OK;
}
