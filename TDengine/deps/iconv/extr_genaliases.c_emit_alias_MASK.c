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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (FILE* out1, const char* alias, const char* c_name)
{
  /* Output alias in upper case. */
  const char* s = alias;
  for (; *s; s++) {
    unsigned char c = * (unsigned char *) s;
    if (c >= 0x80)
      FUNC0(1);
    if (c >= 'a' && c <= 'z')
      c -= 'a'-'A';
    FUNC2(c, out1);
  }
  FUNC1(out1,", ei_%s\n", c_name);
}