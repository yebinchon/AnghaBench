
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vchiq_params ;
typedef scalar_t__ VCOS_STATUS_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_5__ {int version_min; int version; TYPE_2__* userdata; int callback; int fourcc; } ;
typedef TYPE_1__ VCHIQ_SERVICE_PARAMS_T ;
struct TYPE_6__ {int lock; int refcount; int service; int waitpool; } ;


 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ VCOS_ENXIO ;
 int VCOS_FUNCTION ;
 int VCOS_LOG_CATEGORY ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_CLIENT_IPC_LOGLEVEL ;
 int WFC_IPC_CONTROL_FOURCC () ;
 int WFC_IPC_VER_CURRENT ;
 int WFC_IPC_VER_MINIMUM ;
 int init_once ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ vchiq_connect (int ) ;
 scalar_t__ vchiq_initialise (int *) ;
 scalar_t__ vchiq_open_service (int ,TYPE_1__*,int *) ;
 int vchiq_release_service (int ) ;
 int vchiq_remove_service (int ) ;
 int vchiq_shutdown (int ) ;
 int vcos_log_error (char*,int ,scalar_t__) ;
 int vcos_log_register (char*,int ) ;
 int vcos_log_set_level (int ,int ) ;
 int vcos_log_trace (char*,int ) ;
 int vcos_log_unregister (int ) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_once (int *,int ) ;
 TYPE_2__ wfc_client_ipc ;
 scalar_t__ wfc_client_ipc_create_waitpool (int *) ;
 int wfc_client_ipc_destroy_waitpool (int *) ;
 int wfc_client_ipc_once ;
 scalar_t__ wfc_client_ipc_send_client_pid () ;
 int wfc_client_ipc_vchiq_callback ;
 int wfc_client_ipc_vchiq_instance ;

VCOS_STATUS_T wfc_client_ipc_init(void)
{
   VCHIQ_SERVICE_PARAMS_T vchiq_params;
   bool vchiq_initialised = 0, waitpool_initialised = 0;
   bool service_initialised = 0;
   VCOS_STATUS_T status = VCOS_ENXIO;
   VCHIQ_STATUS_T vchiq_status;

   vcos_once(&wfc_client_ipc_once, init_once);

   vcos_mutex_lock(&wfc_client_ipc.lock);

   if (wfc_client_ipc.refcount++ > 0)
   {

      vcos_mutex_unlock(&wfc_client_ipc.lock);
      return VCOS_SUCCESS;
   }

   vcos_log_set_level(VCOS_LOG_CATEGORY, WFC_CLIENT_IPC_LOGLEVEL);
   vcos_log_register("wfcipc", VCOS_LOG_CATEGORY);

   vcos_log_trace("%s: starting initialisation", VCOS_FUNCTION);


   vchiq_status = vchiq_initialise(&wfc_client_ipc_vchiq_instance);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      vcos_log_error("%s: failed to initialise vchiq: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }
   vchiq_initialised = 1;

   vchiq_status = vchiq_connect(wfc_client_ipc_vchiq_instance);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      vcos_log_error("%s: failed to connect to vchiq: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }

   memset(&vchiq_params, 0, sizeof(vchiq_params));
   vchiq_params.fourcc = WFC_IPC_CONTROL_FOURCC();
   vchiq_params.callback = wfc_client_ipc_vchiq_callback;
   vchiq_params.userdata = &wfc_client_ipc;
   vchiq_params.version = WFC_IPC_VER_CURRENT;
   vchiq_params.version_min = WFC_IPC_VER_MINIMUM;

   vchiq_status = vchiq_open_service(wfc_client_ipc_vchiq_instance, &vchiq_params, &wfc_client_ipc.service);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      vcos_log_error("%s: could not open vchiq service: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }
   service_initialised = 1;

   status = wfc_client_ipc_create_waitpool(&wfc_client_ipc.waitpool);
   if (status != VCOS_SUCCESS)
   {
      vcos_log_error("%s: could not create wait pool: %d", VCOS_FUNCTION, status);
      goto error;
   }
   waitpool_initialised = 1;


   vchiq_release_service(wfc_client_ipc.service);

   vcos_mutex_unlock(&wfc_client_ipc.lock);

   status = wfc_client_ipc_send_client_pid();
   if (status != VCOS_SUCCESS)
   {
      vcos_log_error("%s: could not send client pid: %d", VCOS_FUNCTION, status);
      vcos_mutex_lock(&wfc_client_ipc.lock);
      goto error;
   }

   return VCOS_SUCCESS;

error:
   if (waitpool_initialised)
      wfc_client_ipc_destroy_waitpool(&wfc_client_ipc.waitpool);
   if (service_initialised)
      vchiq_remove_service(wfc_client_ipc.service);
   if (vchiq_initialised)
      vchiq_shutdown(wfc_client_ipc_vchiq_instance);
   vcos_log_unregister(VCOS_LOG_CATEGORY);
   wfc_client_ipc.refcount--;

   vcos_mutex_unlock(&wfc_client_ipc.lock);
   return status;
}
