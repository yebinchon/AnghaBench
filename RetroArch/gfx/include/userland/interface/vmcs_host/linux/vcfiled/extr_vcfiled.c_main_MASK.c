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
typedef  int /*<<< orphan*/  lockfile ;
typedef  scalar_t__ VCHIQ_INSTANCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  VCFILED_LOCKFILE ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int errno ; 
 int /*<<< orphan*/  foreground ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  global_connection ; 
 scalar_t__ global_initialise_instance ; 
 int /*<<< orphan*/  lock_prefix ; 
 scalar_t__ lock_prefix_set ; 
 scalar_t__ log_stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char* const*) ; 
 char const* progname ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (char*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,char*,char* const)) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

int FUNC18(int argc, char *const *argv)
{
   VCHIQ_INSTANCE_T vchiq_instance;
   int success;
   char lockfile[128];

   progname = argv[0];
   const char *sep = FUNC6(progname, '/');
   if (sep)
      progname = sep+1;

   FUNC3(argc, argv);

   if (!foreground)
   {
      if ( FUNC0( 0, 1 ) != 0 )
      {
         FUNC1( stderr, "Failed to daemonize: errno = %d", errno );
         return -1;
      }
      log_stderr = 0;
   }
   if ( lock_prefix_set )
   {
      FUNC17( lockfile, sizeof(lockfile), 0, "%s/%s", lock_prefix, VCFILED_LOCKFILE );
   }
   else
   {
      FUNC17( lockfile, sizeof(lockfile), 0, "%s", VCFILED_LOCKFILE );
   }
   success = FUNC8(lockfile, logmsg);
   if (success != 0)
   {
      return -1;
   }

   FUNC2( LOG_INFO, "vcfiled started" );

   FUNC16();

   if (FUNC13(&vchiq_instance) != VCHIQ_SUCCESS)
   {
      FUNC2(LOG_ERR, "%s: failed to open vchiq instance\n", argv[0]);
      return -1;
   }

   success = FUNC11( &global_initialise_instance);
   FUNC14(success == 0);
   vchiq_instance = (VCHIQ_INSTANCE_T)global_initialise_instance;

   global_connection = FUNC10(FUNC4(),
                                              FUNC12());

   FUNC9(&global_connection, 1, global_initialise_instance);

   FUNC7 (global_initialise_instance, &global_connection, 1);

   for (;;)
   {
      FUNC5(INT_MAX);
   }

   FUNC15 ();

   return 0;
}