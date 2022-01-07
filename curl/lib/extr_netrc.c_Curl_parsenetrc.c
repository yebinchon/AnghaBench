
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;
typedef int pwbuf ;


 int DIR_CHAR ;
 int NETRC_FILE_MISSING ;
 char* curl_getenv (char*) ;
 char* curl_maprintf (char*,char*,int ) ;
 int free (char*) ;
 int geteuid () ;
 struct passwd* getpwuid (int ) ;
 int getpwuid_r (int ,struct passwd*,char*,int,struct passwd**) ;
 int parsenetrc (char const*,char**,char**,int*,int*,char*) ;

int Curl_parsenetrc(const char *host,
                    char **loginp,
                    char **passwordp,
                    bool *login_changed,
                    bool *password_changed,
                    char *netrcfile)
{
  int retcode = 1;
  char *filealloc = ((void*)0);

  if(!netrcfile) {
    char *home = ((void*)0);
    char *homea = curl_getenv("HOME");
    if(homea) {
      home = homea;
    }

    if(!home)
      return retcode;


    filealloc = curl_maprintf("%s%s.netrc", home, DIR_CHAR);
    if(!filealloc) {
      free(homea);
      return -1;
    }
    retcode = parsenetrc(host, loginp, passwordp, login_changed,
                         password_changed, filealloc);
    free(filealloc);
    free(homea);
  }
  else
    retcode = parsenetrc(host, loginp, passwordp, login_changed,
                         password_changed, netrcfile);
  return retcode;
}
