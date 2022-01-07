
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_PARAMS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_INSTANCE_T ;
struct TYPE_2__ {int iters; } ;


 int INIT_PARAMS (int *,int,int ,char*,int) ;
 int VCHIQ_BULK_MODE_BLOCKING ;
 scalar_t__ VCHIQ_ERROR ;
 int VCHIQ_MAKE_FOURCC (char,char,char,char) ;

 scalar_t__ VCHIQ_SUCCESS ;
 int VCHIQ_TEST_VER ;
 int clnt_callback ;
 TYPE_1__ g_params ;
 char* g_servname ;
 scalar_t__ g_timeout_ms ;
 int printf (char*,...) ;
 int setup_auto_kill (scalar_t__) ;
 int vchiq_bulk_transmit (int ,int**,int,int ,int ) ;
 int vchiq_close_service (int ) ;
 int vchiq_connect (int ) ;
 scalar_t__ vchiq_initialise (int *) ;
 scalar_t__ vchiq_open_service (int ,int *,int *) ;

__attribute__((used)) static VCHIQ_STATUS_T
vchiq_signal_test(void)
{

   VCHIQ_INSTANCE_T vchiq_instance;
   VCHIQ_SERVICE_HANDLE_T vchiq_service;
   VCHIQ_SERVICE_PARAMS_T vchiq_service_params;
   int fourcc;

   static int sizes[] = { 0, 1024, 2048, 128 };

   fourcc = VCHIQ_MAKE_FOURCC(g_servname[0], g_servname[1], g_servname[2], g_servname[3]);

   printf("signal test - service:%s, iters:%d, version %d\n", g_servname, g_params.iters, VCHIQ_TEST_VER);
   if (vchiq_initialise(&vchiq_instance) != VCHIQ_SUCCESS)
   {
      printf("* failed to open vchiq instance\n");
      return VCHIQ_ERROR;
   }

   vchiq_connect(vchiq_instance);

   INIT_PARAMS(&vchiq_service_params, fourcc, clnt_callback, "clnt userdata", VCHIQ_TEST_VER);
   if (vchiq_open_service(vchiq_instance, &vchiq_service_params, &vchiq_service) != VCHIQ_SUCCESS)
   {
      printf("* failed to open service - already in use?\n");
      return VCHIQ_ERROR;
   }

   vchiq_bulk_transmit(vchiq_service, &sizes, 16, 0, VCHIQ_BULK_MODE_BLOCKING);

   vchiq_close_service(vchiq_service);

   return VCHIQ_SUCCESS;
}
