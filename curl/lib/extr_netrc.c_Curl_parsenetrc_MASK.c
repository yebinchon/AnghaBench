#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  pwbuf ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_CHAR ; 
 int NETRC_FILE_MISSING ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct passwd*,char*,int,struct passwd**) ; 
 int FUNC6 (char const*,char**,char**,int*,int*,char*) ; 

int FUNC7(const char *host,
                    char **loginp,
                    char **passwordp,
                    bool *login_changed,
                    bool *password_changed,
                    char *netrcfile)
{
  int retcode = 1;
  char *filealloc = NULL;

  if(!netrcfile) {
    char *home = NULL;
    char *homea = FUNC0("HOME"); /* portable environment reader */
    if(homea) {
      home = homea;
#if defined(HAVE_GETPWUID_R) && defined(HAVE_GETEUID)
    }
    else {
      struct passwd pw, *pw_res;
      char pwbuf[1024];
      if(!getpwuid_r(geteuid(), &pw, pwbuf, sizeof(pwbuf), &pw_res)
         && pw_res) {
        home = pw.pw_dir;
      }
#elif defined(HAVE_GETPWUID) && defined(HAVE_GETEUID)
    }
    else {
      struct passwd *pw;
      pw = getpwuid(geteuid());
      if(pw) {
        home = pw->pw_dir;
      }
#endif
    }

    if(!home)
      return retcode; /* no home directory found (or possibly out of
                         memory) */

    filealloc = FUNC1("%s%s.netrc", home, DIR_CHAR);
    if(!filealloc) {
      FUNC2(homea);
      return -1;
    }
    retcode = FUNC6(host, loginp, passwordp, login_changed,
                         password_changed, filealloc);
    FUNC2(filealloc);
#ifdef WIN32
    if(retcode == NETRC_FILE_MISSING) {
      /* fallback to the old-style "_netrc" file */
      filealloc = curl_maprintf("%s%s_netrc", home, DIR_CHAR);
      if(!filealloc) {
        free(homea);
        return -1;
      }
      retcode = parsenetrc(host, loginp, passwordp, login_changed,
                           password_changed, filealloc);
      free(filealloc);
    }
#endif
    FUNC2(homea);
  }
  else
    retcode = FUNC6(host, loginp, passwordp, login_changed,
                         password_changed, netrcfile);
  return retcode;
}