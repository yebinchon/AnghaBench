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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  EOVERFLOW ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,size_t*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 
 int FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC4 (char *resultbuf, const char *format, va_list args)
{
  if (FUNC2 (format, '$') == NULL)
    return FUNC3 (resultbuf, format, args);
  else
    {
      size_t length = (size_t) ~0 / (4 * sizeof (char));
      char *result = FUNC1 (resultbuf, &length, format, args);
      if (result != resultbuf)
        {
          FUNC0 (result);
          return -1;
        }
      if (length > INT_MAX)
        {
          errno = EOVERFLOW;
          return -1;
        }
      else
        return length;
    }
}