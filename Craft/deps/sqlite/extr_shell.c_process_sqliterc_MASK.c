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
struct callback_data {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* Argv0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (struct callback_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ stdin_is_interactive ; 

__attribute__((used)) static int FUNC8(
  struct callback_data *p,        /* Configuration data */
  const char *sqliterc_override   /* Name of config file. NULL to use default */
){
  char *home_dir = NULL;
  const char *sqliterc = sqliterc_override;
  char *zBuf = 0;
  FILE *in = NULL;
  int rc = 0;

  if (sqliterc == NULL) {
    home_dir = FUNC1();
    if( home_dir==0 ){
#if !defined(__RTP__) && !defined(_WRS_KERNEL)
      FUNC3(stderr,"%s: Error: cannot locate your home directory\n", Argv0);
#endif
      return 1;
    }
    FUNC6();
    zBuf = FUNC7("%s/.sqliterc",home_dir);
    sqliterc = zBuf;
  }
  in = FUNC2(sqliterc,"rb");
  if( in ){
    if( stdin_is_interactive ){
      FUNC3(stderr,"-- Loading resources from %s\n",sqliterc);
    }
    rc = FUNC4(p,in);
    FUNC0(in);
  }
  FUNC5(zBuf);
  return rc;
}