
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vchiq_params ;
typedef int int32_t ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_5__ {int version; int version_min; int * userdata; int callback; int fourcc; } ;
typedef TYPE_1__ VCHIQ_SERVICE_PARAMS_T ;
struct TYPE_6__ {int lock; int service; int refcount; } ;


 int VCHIQ_MAKE_FOURCC (char,char,unsigned char,char) ;
 scalar_t__ VCHIQ_SUCCESS ;
 int VCOS_FUNCTION ;
 int VCOS_LOG_CATEGORY ;
 int VCOS_LOG_TRACE ;
 int VCOS_SUCCESS ;
 int gpuserv_callback ;
 TYPE_4__ gpuserv_client ;
 int gpuserv_client_once ;
 int gpuserv_client_vchiq_instance ;
 int init_once ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ vchiq_connect (int ) ;
 scalar_t__ vchiq_initialise (int *) ;
 scalar_t__ vchiq_open_service (int ,TYPE_1__*,int *) ;
 int vcos_log_error (char*,int ,scalar_t__) ;
 int vcos_log_register (char*,int ) ;
 int vcos_log_set_level (int ,int ) ;
 int vcos_log_trace (char*,int ) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_once (int *,int ) ;

int32_t vc_gpuserv_init( void )
{
   VCHIQ_SERVICE_PARAMS_T vchiq_params;
   VCHIQ_STATUS_T vchiq_status;

   vcos_once(&gpuserv_client_once, init_once);

   vcos_mutex_lock(&gpuserv_client.lock);

   if (gpuserv_client.refcount++ > 0)
   {

      vcos_mutex_unlock(&gpuserv_client.lock);
      return VCOS_SUCCESS;
   }

   vcos_log_set_level(VCOS_LOG_CATEGORY, VCOS_LOG_TRACE);
   vcos_log_register("gpuserv", VCOS_LOG_CATEGORY);

   vcos_log_trace("%s: starting initialisation", VCOS_FUNCTION);


   vchiq_status = vchiq_initialise(&gpuserv_client_vchiq_instance);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      vcos_log_error("%s: failed to initialise vchiq: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }

   vchiq_status = vchiq_connect(gpuserv_client_vchiq_instance);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      vcos_log_error("%s: failed to connect to vchiq: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }

   memset(&vchiq_params, 0, sizeof(vchiq_params));
   vchiq_params.fourcc = VCHIQ_MAKE_FOURCC('G','P','U','S');
   vchiq_params.callback = gpuserv_callback;
   vchiq_params.userdata = ((void*)0);
   vchiq_params.version = 1;
   vchiq_params.version_min = 1;

   vchiq_status = vchiq_open_service(gpuserv_client_vchiq_instance, &vchiq_params, &gpuserv_client.service);
   if (vchiq_status != VCHIQ_SUCCESS)
   {
      vcos_log_error("%s: could not open vchiq service: %d", VCOS_FUNCTION, vchiq_status);
      goto error;
   }
   vcos_mutex_unlock(&gpuserv_client.lock);
   return 0;
error:
   vcos_mutex_unlock(&gpuserv_client.lock);
   return -1;
}
