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
 char* GIT_COMMIT_ID ; 
 int /*<<< orphan*/  TAINTED ; 
 char* app_name ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ ) ; 

void FUNC2(FILE *fd)
{
   if (!app_name)
      app_name = "Un-named";

   FUNC1(fd, "\n\"%s\" Camera App (commit %s%s)\n\n", FUNC0(app_name), GIT_COMMIT_ID, TAINTED);
}