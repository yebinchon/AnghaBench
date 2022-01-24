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
 char const* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static char *FUNC3(const char *fullfile)
{
  char *filename;
  char *base;
  filename = FUNC2(fullfile); /* duplicate since basename() may ruin the
                                  buffer it works on */
  if(!filename)
    return NULL;
  base = FUNC2(FUNC0(filename));

  FUNC1(filename); /* free temporary buffer */

  return base; /* returns an allocated string or NULL ! */
}