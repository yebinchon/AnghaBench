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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * log_file_buf ; 
 int /*<<< orphan*/ * log_file_fp ; 
 int log_file_initialized ; 

void FUNC2(void)
{
   if (log_file_fp && log_file_initialized)
   {
      FUNC0(log_file_fp);
      log_file_fp = NULL;
   }
   if (log_file_buf)
      FUNC1(log_file_buf);
   log_file_buf = NULL;

   log_file_initialized = false;
}