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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  log_fhandle ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ vcos_log_to_file ; 
 int FUNC2 () ; 

void FUNC3(void)
{
   if(vcos_log_to_file)
   {
      char log_fname[100];
#ifdef ANDROID
      snprintf(log_fname, 100, "/data/log/vcos_log%u.txt", vcos_process_id_current());
#else
      FUNC1(log_fname, 100, "/var/log/vcos_log%u.txt", FUNC2());
#endif
      log_fhandle = FUNC0(log_fname, "w");
   }
   else
      log_fhandle = stderr;
}