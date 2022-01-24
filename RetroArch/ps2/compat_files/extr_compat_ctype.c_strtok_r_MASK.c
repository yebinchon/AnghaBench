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
 int FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

char * FUNC2 (char *s, const char *delim, char **save_ptr)
{
  char *end;
  if (s == NULL)
    s = *save_ptr;
  if (*s == '\0')
    {
      *save_ptr = s;
      return NULL;
    }
  /* Scan leading delimiters.  */
  s += FUNC1 (s, delim);
  if (*s == '\0')
    {
      *save_ptr = s;
      return NULL;
    }
  /* Find the end of the token.  */
  end = s + FUNC0 (s, delim);
  if (*end == '\0')
    {
      *save_ptr = end;
      return s;
    }
  /* Terminate the token and make *SAVE_PTR point past it.  */
  *end = '\0';
  *save_ptr = end + 1;
  return s;
}