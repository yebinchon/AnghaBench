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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const* const,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (FILE* out1, FILE* out2, const char* const* names, size_t n, const char* c_name)
{
  FUNC2(out2,"grep 'sizeof(\"");
  /* Output *names in upper case. */
  {
    const char* s = *names;
    for (; *s; s++) {
      unsigned char c = * (unsigned char *) s;
      if (c >= 0x80)
        FUNC1(1);
      if (c >= 'a' && c <= 'z')
        c -= 'a'-'A';
      FUNC3(c, out2);
    }
  }
  FUNC2(out2,"\")' tmp.h | sed -e 's|^.*\\(stringpool_str[0-9]*\\).*$|  (int)(long)\\&((struct stringpool_t *)0)->\\1,|'\n");
  for (; n > 0; names++, n--)
    FUNC0(out1, *names, c_name);
}