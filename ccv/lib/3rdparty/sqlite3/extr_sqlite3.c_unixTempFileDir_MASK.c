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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  azDirs ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 
 char* sqlite3_temp_directory ; 

__attribute__((used)) static const char *FUNC4(void){
  static const char *azDirs[] = {
     0,
     0,
     "/var/tmp",
     "/usr/tmp",
     "/tmp",
     "."
  };
  unsigned int i = 0;
  struct stat buf;
  const char *zDir = sqlite3_temp_directory;

  if( !azDirs[0] ) azDirs[0] = FUNC1("SQLITE_TMPDIR");
  if( !azDirs[1] ) azDirs[1] = FUNC1("TMPDIR");
  while(1){
    if( zDir!=0
     && FUNC3(zDir, &buf)==0
     && FUNC0(buf.st_mode)
     && FUNC2(zDir, 03)==0
    ){
      return zDir;
    }
    if( i>=sizeof(azDirs)/sizeof(azDirs[0]) ) break;
    zDir = azDirs[i++];
  }
  return 0;
}