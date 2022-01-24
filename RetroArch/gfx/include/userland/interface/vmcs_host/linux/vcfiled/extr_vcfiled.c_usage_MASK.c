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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC1(const char *progname)
{

   FUNC0(stderr,"usage: %s [-debug] [-foreground] [-root dir] [-lock prefix]\n",
           progname);
   FUNC0(stderr,"  --debug       - debug to stderr rather than syslog\n");
   FUNC0(stderr,"  --foreground  - do not fork, stay in foreground\n");
   FUNC0(stderr,"  --root dir    - chdir to this directory first\n");
   FUNC0(stderr,"  --lock prefix - prefix to append to VCFILED_LOCKFILE\n");
}