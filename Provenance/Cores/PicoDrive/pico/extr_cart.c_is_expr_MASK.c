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
 char* FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC3(const char *expr, char **pr)
{
  int len = FUNC1(expr);
  char *p = *pr;

  if (FUNC2(expr, p, len) != 0)
    return 0;
  p = FUNC0(p + len);
  if (*p != '=')
    return 0; // wrong or malformed

  *pr = FUNC0(p + 1);
  return 1;
}