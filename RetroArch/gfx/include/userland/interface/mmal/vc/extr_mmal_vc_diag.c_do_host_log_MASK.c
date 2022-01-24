#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  log ;
typedef  int VC_MEM_ADDR_T ;
typedef  int /*<<< orphan*/  VC_MEM_ACCESS_HANDLE_T ;
struct TYPE_3__ {char* buffer; } ;
typedef  TYPE_1__ MMAL_VC_HOST_LOG_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC6(int argc, const char **argv)
{
   VC_MEM_ACCESS_HANDLE_T vc;
   VC_MEM_ADDR_T log_addr;
   MMAL_VC_HOST_LOG_T log;
   const char *msg = &log.buffer[0];
   const char *log_end = &log.buffer[sizeof(log.buffer)];
   int rc;

   (void) argc;
   (void) argv;

   if ((rc = FUNC1(&vc)) < 0)
   {
      FUNC4(stderr,"Unable to open videocore memory: %d\n", rc);
      return -1;
   }
   if (!FUNC3(vc, "mmal_host_log", &log_addr))
   {
      FUNC4(stderr, "Could not read mmal_host_log address\n");
      goto fail;
   }
   if (!FUNC2(vc, &log, log_addr, sizeof(log)))
   {
      FUNC4(stderr, "Could not read log at 0x%x\n", log_addr);
      goto fail;
   }

   while (msg < log_end)
   {
      if (*msg)
         msg += FUNC5("%s", msg);

      /* Skip multiple null characters */
      while (msg < log_end && *msg == 0) ++msg;
   }

   FUNC0(vc);
   return 0;

fail:
   FUNC0(vc);
   return -1;
}