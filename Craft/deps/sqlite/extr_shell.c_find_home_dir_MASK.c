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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {char* pw_dir; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 struct passwd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,char*,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static char *FUNC7(void){
  static char *home_dir = NULL;
  if( home_dir ) return home_dir;

#if !defined(_WIN32) && !defined(WIN32) && !defined(_WIN32_WCE) && !defined(__RTP__) && !defined(_WRS_KERNEL)
  {
    struct passwd *pwent;
    uid_t uid = FUNC2();
    if( (pwent=FUNC1(uid)) != NULL) {
      home_dir = pwent->pw_dir;
    }
  }
#endif

#if defined(_WIN32_WCE)
  /* Windows CE (arm-wince-mingw32ce-gcc) does not provide getenv()
   */
  home_dir = "/";
#else

#if defined(_WIN32) || defined(WIN32)
  if (!home_dir) {
    home_dir = getenv("USERPROFILE");
  }
#endif

  if (!home_dir) {
    home_dir = FUNC0("HOME");
  }

#if defined(_WIN32) || defined(WIN32)
  if (!home_dir) {
    char *zDrive, *zPath;
    int n;
    zDrive = getenv("HOMEDRIVE");
    zPath = getenv("HOMEPATH");
    if( zDrive && zPath ){
      n = strlen30(zDrive) + strlen30(zPath) + 1;
      home_dir = malloc( n );
      if( home_dir==0 ) return 0;
      sqlite3_snprintf(n, home_dir, "%s%s", zDrive, zPath);
      return home_dir;
    }
    home_dir = "c:\\";
  }
#endif

#endif /* !_WIN32_WCE */

  if( home_dir ){
    int n = FUNC6(home_dir) + 1;
    char *z = FUNC3( n );
    if( z ) FUNC4(z, home_dir, n);
    home_dir = z;
  }

  return home_dir;
}