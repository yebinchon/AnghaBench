
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHIQ_STATUS_T ;
typedef void* VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_REASON_T ;
typedef void VCHIQ_HEADER_T ;






 int VCHIQ_SUCCESS ;
 int fun2_error ;
 int func_test_sync ;
 int vcos_event_signal (int *) ;
 int vcos_unused (void*) ;

__attribute__((used)) static VCHIQ_STATUS_T
fun2_clnt_callback(VCHIQ_REASON_T reason, VCHIQ_HEADER_T *header,
   VCHIQ_SERVICE_HANDLE_T service, void *bulk_userdata)
{
   vcos_unused(header);
   vcos_unused(service);
   vcos_unused(bulk_userdata);

   switch (reason)
   {
   case 128:
   case 129:
   case 130:
      break;
   case 131:
      vcos_event_signal(&func_test_sync);
      break;
   default:
      fun2_error = 1;
      vcos_event_signal(&func_test_sync);
      break;
   }

   return VCHIQ_SUCCESS;
}
