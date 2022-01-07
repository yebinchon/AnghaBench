
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef scalar_t__ int32_t ;
typedef int VCOS_THREAD_ATTR_T ;
typedef scalar_t__ VCOS_STATUS_T ;
typedef int VCHI_INSTANCE_T ;
typedef int VCHI_CONNECTION_T ;
struct TYPE_6__ {int initialised; size_t num_connections; int * notify_handle; int * client_handle; int lock; } ;
struct TYPE_5__ {int member_9; int member_8; int member_7; int * member_6; int * member_5; int member_4; int member_3; int * member_2; int member_1; int member_0; } ;
typedef TYPE_1__ SERVICE_CREATION_T ;
typedef int DISPMANX_SERVICE_T ;


 int DISPMANX_CLIENT_NAME ;
 int DISPMANX_NOTIFY_NAME ;
 int VCHI_VERSION (int ) ;
 scalar_t__ VCOS_SUCCESS ;
 int VC_DISPMANX_VERSION ;
 int VC_FALSE ;
 TYPE_3__ dispmanx_client ;
 int dispmanx_client_callback ;
 int dispmanx_message_available_event ;
 int dispmanx_notify_available_event ;
 int dispmanx_notify_callback ;
 int dispmanx_notify_func ;
 int dispmanx_notify_task ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ vchi_service_open (int ,TYPE_1__*,int *) ;
 int vchi_service_release (int ) ;
 int vcos_assert (int) ;
 scalar_t__ vcos_event_create (int *,char*) ;
 scalar_t__ vcos_mutex_create (int *,char*) ;
 int vcos_thread_attr_init (int *) ;
 int vcos_thread_attr_setstacksize (int *,int) ;
 int vcos_thread_attr_settimeslice (int *,int) ;
 scalar_t__ vcos_thread_create (int *,char*,int *,int ,int *) ;

void vc_vchi_dispmanx_init (VCHI_INSTANCE_T initialise_instance, VCHI_CONNECTION_T **connections, uint32_t num_connections ) {
   VCOS_STATUS_T status;
   int32_t success;
   uint32_t i;

   if (dispmanx_client.initialised)
     return;


   memset( &dispmanx_client, 0, sizeof(DISPMANX_SERVICE_T) );
   dispmanx_client.num_connections = num_connections;

   status = vcos_mutex_create(&dispmanx_client.lock, "HDispmanx");
   vcos_assert(status == VCOS_SUCCESS);

   status = vcos_event_create(&dispmanx_message_available_event, "HDispmanx");
   vcos_assert(status == VCOS_SUCCESS);

   status = vcos_event_create(&dispmanx_notify_available_event, "HDispmanx");
   vcos_assert(status == VCOS_SUCCESS);

   dispmanx_client.initialised = 1;

   for (i=0; i<dispmanx_client.num_connections; i++) {

      VCOS_THREAD_ATTR_T attrs;


      SERVICE_CREATION_T dispmanx_parameters = { VCHI_VERSION(VC_DISPMANX_VERSION),
                                                 DISPMANX_CLIENT_NAME,
                                                 connections[i],
                                                 0,
                                                 0,
                                                 &dispmanx_client_callback,
                                                 &dispmanx_message_available_event,
                                                 VC_FALSE,
                                                 VC_FALSE,
                                                 VC_FALSE,
                                                 };

      SERVICE_CREATION_T dispmanx_parameters2 = { VCHI_VERSION(VC_DISPMANX_VERSION),
                                                  DISPMANX_NOTIFY_NAME,
                                                  connections[i],
                                                  0,
                                                  0,
                                                  &dispmanx_notify_callback,
                                                  &dispmanx_notify_available_event,
                                                  VC_FALSE,
                                                  VC_FALSE,
                                                  VC_FALSE,
                                                   };

      success = vchi_service_open( initialise_instance, &dispmanx_parameters, &dispmanx_client.client_handle[i] );
      vcos_assert( success == 0 );



      success = vchi_service_open( initialise_instance, &dispmanx_parameters2, &dispmanx_client.notify_handle[i] );
      vcos_assert( success == 0 );


      vcos_thread_attr_init(&attrs);
      vcos_thread_attr_setstacksize(&attrs, 2048);
      vcos_thread_attr_settimeslice(&attrs, 1);

      status = vcos_thread_create(&dispmanx_notify_task, "HDispmanx Notify", &attrs, dispmanx_notify_func, ((void*)0));
      vcos_assert(status == VCOS_SUCCESS);


      vchi_service_release(dispmanx_client.client_handle[i]);
      vchi_service_release(dispmanx_client.notify_handle[i]);
   }
}
