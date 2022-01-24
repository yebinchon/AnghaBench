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
 int /*<<< orphan*/  Z_DEFAULT_STRATEGY ; 
 void* FUNC0 (char const*,char*) ; 
 void* FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void *FUNC6(const char *fname, int is_save)
{
  int len = FUNC5(fname);
  void *afile = NULL;

  if (len > 3 && FUNC4(fname + len - 3, ".gz") == 0)
  {
    if ( (afile = FUNC1(fname, is_save ? "wb" : "rb")) ) {
      FUNC3(1);
      if (is_save)
        FUNC2(afile, 9, Z_DEFAULT_STRATEGY);
    }
  }
  else
  {
    if ( (afile = FUNC0(fname, is_save ? "wb" : "rb")) ) {
      FUNC3(0);
    }
  }

  return afile;
}