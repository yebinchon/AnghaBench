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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EOVERFLOW ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

int
FUNC5 (FILE *stream, const char *format, va_list args)
{
  if (FUNC3 (format, '$') == NULL)
    return FUNC4 (stream, format, args);
  else
    {
      size_t length;
      char *result = FUNC2 (NULL, &length, format, args);
      int retval = -1;
      if (result != NULL)
        {
          size_t written = FUNC1 (result, 1, length, stream);
          FUNC0 (result);
          if (written == length)
            {
              if (length > INT_MAX)
                errno = EOVERFLOW;
              else
                retval = length;
            }
        }
      return retval;
    }
}