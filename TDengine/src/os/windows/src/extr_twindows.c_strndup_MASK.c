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
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*) ; 

char *FUNC3(const char *s, size_t n) {
  int len = FUNC2(s);
  if (len >= n) {
    len = n;
  }

  char *r = FUNC0(len + 1, 1);
  FUNC1(r, s, len);
  r[len] = 0;
  return r;
}