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
 int /*<<< orphan*/  cmd_log ; 
 int /*<<< orphan*/  dflt_log_category ; 
 int inited ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(void)
{
   if (inited)
   {
      /* FIXME: should print a warning or something here */
      return;
   }
   FUNC4(&lock, "vcos_log");

   FUNC2();

   FUNC3("default", &dflt_log_category);

#if VCOS_WANT_LOG_CMD
   vcos_cmd_register( &cmd_log );
#endif

   FUNC0(!inited);
   inited = 1;
}