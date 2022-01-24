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
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (int) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 

const char *
FUNC6 (const char *codeset, size_t name_len)
{
  size_t len = 0;
  int only_digit = 1;
  char *retval;
  char *wp;
  size_t cnt;

  for (cnt = 0; cnt < name_len; ++cnt)
    if (FUNC0 ((unsigned char) codeset[cnt]))
      {
	++len;

	if (FUNC1 ((unsigned char) codeset[cnt]))
	  only_digit = 0;
      }

  retval = (char *) FUNC3 ((only_digit ? 3 : 0) + len + 1);

  if (retval != NULL)
    {
      if (only_digit)
	wp = FUNC4 (retval, "iso");
      else
	wp = retval;

      for (cnt = 0; cnt < name_len; ++cnt)
	if (FUNC1 ((unsigned char) codeset[cnt]))
	  *wp++ = FUNC5 ((unsigned char) codeset[cnt]);
	else if (FUNC2 ((unsigned char) codeset[cnt]))
	  *wp++ = codeset[cnt];

      *wp = '\0';
    }

  return (const char *) retval;
}