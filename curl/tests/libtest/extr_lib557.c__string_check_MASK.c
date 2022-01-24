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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(int linenumber, char *buf, const char *buf2)
{
  if(FUNC1(buf, buf2)) {
    /* they shouldn't differ */
    FUNC0("sprintf line %d failed:\nwe      '%s'\nsystem: '%s'\n",
           linenumber, buf, buf2);
    return 1;
  }
  return 0;
}