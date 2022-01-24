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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static const char *FUNC3(char *buf, int blen, const char *str)
{
  const char *p, *s, *e;
  int len;

  p = str;
  while (FUNC0(*p))
    p++;
  if (*p == 0)
    return NULL;
  if (*p == ';') {
    FUNC2(buf, ";");
    return p + 1;
  }

  s = p;
  while (*p != 0 && *p != ';' && !FUNC0(*p))
    p++;
  e = p;
  while (FUNC0(*e))
    e++;

  len = p - s;
  if (len > blen - 1)
    len = blen - 1;
  FUNC1(buf, s, len);
  buf[len] = 0;
  return e;
}