
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* int32_t ;
typedef int VCSM_STATUS_T ;
struct TYPE_5__ {scalar_t__ want_prefix; } ;
struct TYPE_6__ {TYPE_1__ flags; } ;


 int OPTSTRING_LEN ;




 int VCOS_LOG_INFO ;
 int VCSM_STATUS_HOST_WALK_MAP ;
 int VCSM_STATUS_HOST_WALK_PID_ALLOC ;
 int VCSM_STATUS_NONE ;
 int VCSM_STATUS_VC_MAP_ALL ;
 int VCSM_STATUS_VC_WALK_ALLOC ;
 int blah_blah ;
 int create_optstring (char*) ;
 int exit (int) ;
 int get_status (int ,int) ;
 int getopt_long_only (int,char**,char*,int ,int *) ;
 int long_opts ;
 int memcpy (void*,int ,int) ;
 int memset (void*,int ,int) ;
 char* optarg ;
 int optind ;
 int quit_event ;
 int show_usage () ;
 TYPE_2__ smem_log_category ;
 int sscanf (char*,char*,char*) ;
 int start_monitor () ;
 scalar_t__ strtol (char*,char**,int) ;
 int strtoul (char*,char**,int) ;
 int vcos_event_delete (int *) ;
 int vcos_event_wait (int *) ;
 int vcos_init () ;
 int vcos_log_info (char*,...) ;
 int vcos_log_register (char*,TYPE_2__*) ;
 int vcos_log_set_level (TYPE_2__*,int ) ;
 int vcos_strcasecmp (char*,char*) ;
 int vcsm_exit () ;
 int vcsm_free (unsigned int) ;
 int vcsm_init () ;
 void* vcsm_lock (unsigned int) ;
 unsigned int vcsm_malloc (int,char*) ;
 void* vcsm_resize (unsigned int,int) ;
 void* vcsm_unlock_hdl (unsigned int) ;
 void* vcsm_unlock_ptr (void*) ;
 void* vcsm_usr_handle (void*) ;
 int vcsm_vc_hdl_from_hdl (unsigned int) ;
 void* vcsm_vc_hdl_from_ptr (void*) ;

int main( int argc, char **argv )
{
   int32_t ret;
   char optstring[OPTSTRING_LEN];
   int opt;
   int opt_alloc = 0;
   int opt_status = 0;
   uint32_t alloc_size = 0;
   int opt_pid = -1;
   VCSM_STATUS_T status_mode = VCSM_STATUS_NONE;

   void *usr_ptr_1;
   unsigned int usr_hdl_1;






   vcos_init();

   vcos_log_set_level(&smem_log_category, VCOS_LOG_INFO);
   smem_log_category.flags.want_prefix = 0;
   vcos_log_register( "smem", &smem_log_category );


   create_optstring( optstring );


   while (( opt = getopt_long_only( argc, argv, optstring, long_opts,
                                    ((void*)0) )) != -1 )
   {
      switch ( opt )
      {
         case 0:
         {

            break;
         }
         case 131:
         {
            char *end;
            alloc_size = (uint32_t)strtoul( optarg, &end, 10 );
            if (end == optarg)
            {
               vcos_log_info( "Invalid arguments '%s'", optarg );
               goto err_out;
            }

            opt_alloc = 1;
            break;
         }
         case 129:
         {
            char *end;
            opt_pid = (int)strtol( optarg, &end, 10 );
            if (end == optarg)
            {
               vcos_log_info( "Invalid arguments '%s'", optarg );
               goto err_out;
            }

            break;
         }
         case 128:
         {
            char status_str[32];


            if ( sscanf( optarg, "%31s", status_str ) != 1 )
            {
               vcos_log_info( "Invalid arguments '%s'", optarg );
               goto err_out;
            }

            if ( vcos_strcasecmp( status_str, "all" ) == 0 )
            {
               status_mode = VCSM_STATUS_VC_MAP_ALL;
            }
            else if ( vcos_strcasecmp( status_str, "vc" ) == 0 )
            {
               status_mode = VCSM_STATUS_VC_WALK_ALLOC;
            }
            else if ( vcos_strcasecmp( status_str, "map" ) == 0 )
            {
               status_mode = VCSM_STATUS_HOST_WALK_MAP;
            }
            else if ( vcos_strcasecmp( status_str, "host" ) == 0 )
            {
               status_mode = VCSM_STATUS_HOST_WALK_PID_ALLOC;
            }
            else
            {
               goto err_out;
            }

            opt_status = 1;
            break;
         }
         default:
         {
            vcos_log_info( "Unrecognized option '%d'", opt );
            goto err_usage;
         }
         case '?':
         case 130:
         {
            goto err_usage;
         }
      }
   }

   argc -= optind;
   argv += optind;

   if (( optind == 1 ) || ( argc > 0 ))
   {
      if ( argc > 0 )
      {
         vcos_log_info( "Unrecognized argument -- '%s'", *argv );
      }

      goto err_usage;
   }


   if ( vcsm_init() == -1 )
   {
      vcos_log_info( "Cannot initialize smem device" );
      goto err_out;
   }

   if ( opt_alloc == 1 )
   {
      vcos_log_info( "Allocating 2 times %u-bytes in shared memory", alloc_size );

      usr_hdl_1 = vcsm_malloc( alloc_size,
                               "smem-test-alloc" );

      vcos_log_info( "Allocation 1 result: user %x, vc-hdl %x",
                     usr_hdl_1, vcsm_vc_hdl_from_hdl( usr_hdl_1 ) );
      if ( usr_hdl_1 != 0 )
      {
         usr_ptr_1 = vcsm_lock( usr_hdl_1 );
         vcos_log_info( "Allocation 1 : lock %p",
                        usr_ptr_1 );
         if ( usr_ptr_1 )
         {
            memset ( usr_ptr_1,
                     0,
                     alloc_size );
            memcpy ( usr_ptr_1,
                     blah_blah,
                     32 );
            vcos_log_info( "Allocation 1 contains: \"%s\"",
                           (char *)usr_ptr_1 );

            vcos_log_info( "Allocation 1: vc-hdl %x",
                           vcsm_vc_hdl_from_ptr ( usr_ptr_1 ) );
            vcos_log_info( "Allocation 1: usr-hdl %x",
                           vcsm_usr_handle ( usr_ptr_1 ) );
            vcos_log_info( "Allocation 1 : unlock %d",
                           vcsm_unlock_ptr( usr_ptr_1 ) );
         }

         usr_ptr_1 = vcsm_lock( usr_hdl_1 );
         vcos_log_info( "Allocation 1 (relock) : lock %p",
                        usr_ptr_1 );
         if ( usr_ptr_1 )
         {
            vcos_log_info( "Allocation 1 (relock) : unlock %d",
                           vcsm_unlock_hdl( usr_hdl_1 ) );
         }
      }
   }

   if ( opt_status == 1 )
   {
      get_status( status_mode, opt_pid );
   }




   if ( opt_alloc == 1 )
   {
      start_monitor();

      vcos_event_wait( &quit_event );
      vcos_event_delete( &quit_event );
   }


   vcsm_exit ();
   goto err_out;

err_usage:
   show_usage();

err_out:
   exit( 1 );
}
