
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ VCOS_STATUS_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_3__ {int callback; int fourcc; void* version_min; void* version; int * userdata; } ;
typedef TYPE_1__ VCHIQ_SERVICE_PARAMS_T ;


 int FOURCC_KHAN ;
 int FOURCC_KHHN ;
 int FOURCC_KHRN ;
 int UNUSED_NDEBUG (scalar_t__) ;
 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ VCOS_SUCCESS ;
 void* VC_KHRN_VERSION ;
 int bulk_event ;
 int exit (int) ;
 int khan_callback ;
 int khhn_callback ;
 int khhn_queue ;
 int khrn_callback ;
 int khrn_queue ;
 int khrn_vchiq_instance ;
 scalar_t__ vchiq_connect (int ) ;
 scalar_t__ vchiq_initialise (int *) ;
 int vchiq_khan_service ;
 int vchiq_khhn_service ;
 int vchiq_khrn_service ;
 scalar_t__ vchiq_open_service (int ,TYPE_1__*,int *) ;
 int vchiu_queue_init (int *,int) ;
 int vcos_assert (int) ;
 scalar_t__ vcos_event_create (int *,int *) ;
 int vcos_log_error (char*) ;
 int vcos_log_trace (char*) ;

void vc_vchi_khronos_init()
{
   VCOS_STATUS_T status = vcos_event_create(&bulk_event, ((void*)0));
   UNUSED_NDEBUG(status);
   vcos_assert(status == VCOS_SUCCESS);

   if (vchiq_initialise(&khrn_vchiq_instance) != VCHIQ_SUCCESS)
   {
      vcos_log_error("* failed to open vchiq device");

      exit(1);
   }

   vcos_log_trace("gldemo: connecting");

   if (vchiq_connect(khrn_vchiq_instance) != VCHIQ_SUCCESS)
   {
      vcos_log_error("* failed to connect");

      exit(1);
   }

   VCHIQ_STATUS_T khan_return, khrn_return, khhn_return;
   VCHIQ_SERVICE_PARAMS_T params;

   params.userdata = ((void*)0);
   params.version = VC_KHRN_VERSION;
   params.version_min = VC_KHRN_VERSION;

   params.fourcc = FOURCC_KHAN;
   params.callback = khan_callback;
   khan_return = vchiq_open_service(khrn_vchiq_instance, &params, &vchiq_khan_service);

   params.fourcc = FOURCC_KHRN;
   params.callback = khrn_callback;
   khrn_return = vchiq_open_service(khrn_vchiq_instance, &params, &vchiq_khrn_service);

   params.fourcc = FOURCC_KHHN;
   params.callback = khhn_callback;
   khhn_return = vchiq_open_service(khrn_vchiq_instance, &params, &vchiq_khhn_service);

   if (khan_return != VCHIQ_SUCCESS ||
       khrn_return != VCHIQ_SUCCESS ||
       khhn_return != VCHIQ_SUCCESS)
   {
      vcos_log_error("* failed to add service - already in use?");

      exit(1);
   }
   vchiu_queue_init(&khrn_queue, 64);
   vchiu_queue_init(&khhn_queue, 64);

   vcos_log_trace("gldemo: connected");







}
