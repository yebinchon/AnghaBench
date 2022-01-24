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

/* Variables and functions */
 int /*<<< orphan*/  MAX_PATHNAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SQLITE_CANTOPEN_BKPT ; 
 int SQLITE_OK ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC5(const char *zFilename, int *pFd){
  int ii;
  int fd = -1;
  char zDirname[MAX_PATHNAME+1];

  FUNC2(MAX_PATHNAME, zDirname, "%s", zFilename);
  for(ii=(int)FUNC3(zDirname); ii>1 && zDirname[ii]!='/'; ii--);
  if( ii>0 ){
    zDirname[ii] = '\0';
    fd = FUNC1(zDirname, O_RDONLY|O_BINARY, 0);
    if( fd>=0 ){
      FUNC0(("OPENDIR %-3d %s\n", fd, zDirname));
    }
  }
  *pFd = fd;
  return (fd>=0?SQLITE_OK:FUNC4(SQLITE_CANTOPEN_BKPT, "open", zDirname));
}