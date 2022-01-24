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
 char* FUNC0 (int,char const*) ; 
 char const* FUNC1 (char const*) ; 

const char *
FUNC2 (int category, const char *categoryname)
{
#if HAVE_USELOCALE
  const char *name = gl_locale_name_thread_unsafe (category, categoryname);
  if (name != NULL)
    return struniq (name);
#endif
  return NULL;
}