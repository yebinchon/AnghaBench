
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lockfile ;
typedef scalar_t__ VCHIQ_INSTANCE_T ;


 int INT_MAX ;
 int LOG_ERR ;
 int LOG_INFO ;
 int VCFILED_LOCKFILE ;
 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ daemon (int ,int) ;
 int errno ;
 int foreground ;
 int fprintf (int ,char*,int) ;
 int global_connection ;
 scalar_t__ global_initialise_instance ;
 int lock_prefix ;
 scalar_t__ lock_prefix_set ;
 scalar_t__ log_stderr ;
 int logmsg (int ,char*,...) ;
 int parse_args (int,char* const*) ;
 char const* progname ;
 int single_get_func_table () ;
 int sleep (int ) ;
 int stderr ;
 char* strrchr (char const*,char) ;
 int vc_vchi_filesys_init (scalar_t__,int *,int) ;
 int vcfiled_lock (char*,int (*) (int ,char*,char* const)) ;
 int vchi_connect (int *,int,scalar_t__) ;
 int vchi_create_connection (int ,int ) ;
 int vchi_initialise (scalar_t__*) ;
 int vchi_mphi_message_driver_func_table () ;
 scalar_t__ vchiq_initialise (scalar_t__*) ;
 int vcos_assert (int) ;
 int vcos_deinit () ;
 int vcos_init () ;
 int vcos_safe_sprintf (char*,int,int ,char*,int ,...) ;

int main(int argc, char *const *argv)
{
   VCHIQ_INSTANCE_T vchiq_instance;
   int success;
   char lockfile[128];

   progname = argv[0];
   const char *sep = strrchr(progname, '/');
   if (sep)
      progname = sep+1;

   parse_args(argc, argv);

   if (!foreground)
   {
      if ( daemon( 0, 1 ) != 0 )
      {
         fprintf( stderr, "Failed to daemonize: errno = %d", errno );
         return -1;
      }
      log_stderr = 0;
   }
   if ( lock_prefix_set )
   {
      vcos_safe_sprintf( lockfile, sizeof(lockfile), 0, "%s/%s", lock_prefix, VCFILED_LOCKFILE );
   }
   else
   {
      vcos_safe_sprintf( lockfile, sizeof(lockfile), 0, "%s", VCFILED_LOCKFILE );
   }
   success = vcfiled_lock(lockfile, logmsg);
   if (success != 0)
   {
      return -1;
   }

   logmsg( LOG_INFO, "vcfiled started" );

   vcos_init();

   if (vchiq_initialise(&vchiq_instance) != VCHIQ_SUCCESS)
   {
      logmsg(LOG_ERR, "%s: failed to open vchiq instance\n", argv[0]);
      return -1;
   }

   success = vchi_initialise( &global_initialise_instance);
   vcos_assert(success == 0);
   vchiq_instance = (VCHIQ_INSTANCE_T)global_initialise_instance;

   global_connection = vchi_create_connection(single_get_func_table(),
                                              vchi_mphi_message_driver_func_table());

   vchi_connect(&global_connection, 1, global_initialise_instance);

   vc_vchi_filesys_init (global_initialise_instance, &global_connection, 1);

   for (;;)
   {
      sleep(INT_MAX);
   }

   vcos_deinit ();

   return 0;
}
