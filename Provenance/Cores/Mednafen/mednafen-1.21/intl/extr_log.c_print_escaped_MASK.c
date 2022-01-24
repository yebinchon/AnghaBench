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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 (FILE *stream, const char *str, const char *str_end)
{
  FUNC1 ('"', stream);
  for (; str != str_end; str++)
    if (*str == '\n')
      {
        FUNC0 ("\\n\"", stream);
        if (str + 1 == str_end)
          return;
        FUNC0 ("\n\"", stream);
      }
    else
      {
        if (*str == '"' || *str == '\\')
          FUNC1 ('\\', stream);
        FUNC1 (*str, stream);
      }
  FUNC1 ('"', stream);
}