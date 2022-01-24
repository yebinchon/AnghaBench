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
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  msgbuf ;

/* Variables and functions */
 int REG_NOMATCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(const char *s, const char *reg, int cflags) {
  regex_t regex;
  char    msgbuf[100];

  /* Compile regular expression */
  if (FUNC2(&regex, reg, cflags) != 0) {
    FUNC1(stderr, "Fail to compile regex");
    FUNC0();
  }

  /* Execute regular expression */
  int reti = FUNC4(&regex, s, 0, NULL, 0);
  if (!reti) {
    FUNC5(&regex);
    return 1;
  } else if (reti == REG_NOMATCH) {
    FUNC5(&regex);
    return 0;
  } else {
    FUNC3(reti, &regex, msgbuf, sizeof(msgbuf));
    FUNC1(stderr, "Regex match failed: %s\n", msgbuf);
    FUNC5(&regex);
    FUNC0();
  }

  return 0;
}