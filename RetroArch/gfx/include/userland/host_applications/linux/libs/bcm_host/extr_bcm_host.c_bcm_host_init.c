
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int response ;
typedef scalar_t__ VCHIQ_INSTANCE_T ;


 scalar_t__ VCHIQ_SUCCESS ;
 int exit (int) ;
 int global_connection ;
 scalar_t__ global_initialise_instance ;
 int printf (char*) ;
 int single_get_func_table () ;
 int vc_gencmd (char*,int,char*) ;
 int vc_vchi_cec_init (scalar_t__,int *,int) ;
 int vc_vchi_dispmanx_init (scalar_t__,int *,int) ;
 int vc_vchi_gencmd_init (scalar_t__,int *,int) ;
 int vc_vchi_tv_init (scalar_t__,int *,int) ;
 int vchi_connect (int *,int,scalar_t__) ;
 int vchi_create_connection (int ,int ) ;
 int vchi_initialise (scalar_t__*) ;
 int vchi_mphi_message_driver_func_table () ;
 scalar_t__ vchiq_initialise (scalar_t__*) ;
 int vcos_assert (int) ;
 int vcos_init () ;
 int vcos_log (char*) ;

void bcm_host_init(void)
{
   VCHIQ_INSTANCE_T vchiq_instance;
   static int initted;
   int success = -1;
   char response[ 128 ];

   if (initted)
 return;
   initted = 1;
   vcos_init();

   if (vchiq_initialise(&vchiq_instance) != VCHIQ_SUCCESS)
   {
      printf("* failed to open vchiq instance\n");
      exit(-1);
   }

   vcos_log("vchi_initialise");
   success = vchi_initialise( &global_initialise_instance);
   vcos_assert(success == 0);
   vchiq_instance = (VCHIQ_INSTANCE_T)global_initialise_instance;

   global_connection = vchi_create_connection(single_get_func_table(),
                                              vchi_mphi_message_driver_func_table());

   vcos_log("vchi_connect");
   vchi_connect(&global_connection, 1, global_initialise_instance);

   vc_vchi_gencmd_init (global_initialise_instance, &global_connection, 1);
   vc_vchi_dispmanx_init (global_initialise_instance, &global_connection, 1);
   vc_vchi_tv_init (global_initialise_instance, &global_connection, 1);
   vc_vchi_cec_init (global_initialise_instance, &global_connection, 1);


   if ( success == 0 )
   {
      success = vc_gencmd( response, sizeof(response), "set_vll_dir /sd/vlls" );
      vcos_assert( success == 0 );
   }
}
