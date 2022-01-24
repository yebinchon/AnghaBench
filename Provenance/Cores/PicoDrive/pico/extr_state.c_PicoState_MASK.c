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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (char const*,int) ; 
 int FUNC2 (void*,int) ; 

int FUNC3(const char *fname, int is_save)
{
  void *afile = NULL;
  int ret;

  afile = FUNC1(fname, is_save);
  if (afile == NULL)
    return -1;

  ret = FUNC2(afile, is_save);
  FUNC0(afile);
  return ret;
}