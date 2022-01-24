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
 int FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(char *p, int *val0, int *val1, int *val2)
{
  char *r;
  *val0 = FUNC1(p, &r, 0);
  if (r == p)
    goto bad;
  p = FUNC0(r);
  if (*p++ != ',')
    goto bad;
  *val1 = FUNC1(p, &r, 0);
  if (r == p)
    goto bad;
  p = FUNC0(r);
  if (*p++ != ',')
    goto bad;
  *val2 = FUNC1(p, &r, 0);
  if (r == p)
    goto bad;

  return 1;
bad:
  return 0;
}