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
 int MAXPATHLEN ; 
 size_t TYPE_RECENT ; 
 size_t deviceType ; 
 char* fileDir ; 
 int /*<<< orphan*/ * rootdir ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char*) ; 

int FUNC6(bool go_up, char *dirname)
{
  /* go up to parent directory */
  if (go_up)
  {
    /* special case */
    if (deviceType == TYPE_RECENT) return 0;

    /* check if we already are at root directory */
    if (!FUNC1(rootdir[deviceType], (const char *)fileDir)) return 0;

    int size=0;
    char temp[MAXPATHLEN];

    /* determine last folder name length */
    FUNC2(temp, fileDir);
    char *test= FUNC5(temp,"/");
    while (test != NULL)
    {
      size = FUNC3(test);
      FUNC4(dirname,test,size);
      dirname[size] = 0;
      test = FUNC5(NULL,"/");
    }

    /* remove last folder from path */
    size = FUNC3(fileDir) - size;
    fileDir[size - 1] = 0;
  }
  else
  {
    /* by default, simply append folder name */
    FUNC0(fileDir, "%s%s/",fileDir, dirname);
  }

  return 1;
}