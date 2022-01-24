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
 char const* FUNC0 () ; 
 char* FUNC1 (int,char const*) ; 
 char* FUNC2 (int,char const*) ; 

const char *
FUNC3 (int category, const char *categoryname)
{
  const char *retval;

  retval = FUNC2 (category, categoryname);
  if (retval != NULL)
    return retval;

  retval = FUNC1 (category, categoryname);
  if (retval != NULL)
    return retval;

  return FUNC0 ();
}