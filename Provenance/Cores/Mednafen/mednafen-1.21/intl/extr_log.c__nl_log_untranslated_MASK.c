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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char const*,char const*,int) ; 
 int /*<<< orphan*/  lock ; 

void
FUNC3 (const char *logfilename, const char *domainname,
                      const char *msgid1, const char *msgid2, int plural)
{
  FUNC0 (lock);
  FUNC2 (logfilename, domainname, msgid1, msgid2, plural);
  FUNC1 (lock);
}