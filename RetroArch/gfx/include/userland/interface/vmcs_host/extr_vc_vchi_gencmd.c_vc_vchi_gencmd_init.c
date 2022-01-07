
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ VCOS_STATUS_T ;
typedef int VCHI_INSTANCE_T ;
typedef int VCHI_CONNECTION_T ;
struct TYPE_6__ {int initialised; int num_connections; int * open_handle; int message_available_event; int lock; } ;
struct TYPE_5__ {int member_9; int member_8; int member_7; int * member_6; int * member_5; int member_4; int member_3; int * member_2; int member_1; int member_0; } ;
typedef TYPE_1__ SERVICE_CREATION_T ;
typedef int GENCMD_SERVICE_T ;


 int MAKE_FOURCC (char*) ;
 int VCHI_VERSION (int ) ;
 scalar_t__ VCOS_SUCCESS ;
 int VC_FALSE ;
 int VC_GENCMD_VER ;
 int assert (int) ;
 int gencmd_callback ;
 TYPE_3__ gencmd_client ;
 int memset (TYPE_3__*,int ,int) ;
 int release_gencmd_service () ;
 scalar_t__ vchi_service_open (int ,TYPE_1__*,int *) ;
 int vcos_assert (int) ;
 scalar_t__ vcos_event_create (int *,char*) ;
 scalar_t__ vcos_mutex_create (int *,char*) ;

void vc_vchi_gencmd_init (VCHI_INSTANCE_T initialise_instance, VCHI_CONNECTION_T **connections, uint32_t num_connections )
{
   VCOS_STATUS_T status;
   int32_t success;
   int i;

   if (gencmd_client.initialised)
     return;


   memset( &gencmd_client, 0, sizeof(GENCMD_SERVICE_T) );
   gencmd_client.num_connections = (int) num_connections;

   status = vcos_mutex_create(&gencmd_client.lock, "HGencmd");
   vcos_assert(status == VCOS_SUCCESS);
   status = vcos_event_create(&gencmd_client.message_available_event, "HGencmd");
   vcos_assert(status == VCOS_SUCCESS);

   for (i=0; i<gencmd_client.num_connections; i++) {


      SERVICE_CREATION_T gencmd_parameters = { VCHI_VERSION(VC_GENCMD_VER),
                                               MAKE_FOURCC("GCMD"),
                                               connections[i],
                                               0,
                                               0,
                                               &gencmd_callback,
                                               &gencmd_client.message_available_event,
                                               VC_FALSE,
                                               VC_FALSE,
                                               VC_FALSE
                                               };

      success = vchi_service_open( initialise_instance, &gencmd_parameters, &gencmd_client.open_handle[i] );
      assert( success == 0 );
   }

   gencmd_client.initialised = 1;
   release_gencmd_service();
}
