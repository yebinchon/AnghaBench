
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHIQ_STATUS_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_REASON_T ;
typedef int VCHIQ_HEADER_T ;


 int UNREACHABLE () ;







 int VCHIQ_SUCCESS ;
 int bulk_event ;
 int khrn_queue ;
 int vchiu_queue_push (int *,int *) ;
 int vcos_event_signal (int *) ;

VCHIQ_STATUS_T khrn_callback(VCHIQ_REASON_T reason, VCHIQ_HEADER_T *header,
                  VCHIQ_SERVICE_HANDLE_T handle, void *bulk_userdata)
{
   switch (reason) {
   case 130:
      vchiu_queue_push(&khrn_queue, header);
      break;
   case 131:
   case 133:
      vcos_event_signal(&bulk_event);
      break;
   case 128:
   case 129:
   case 132:
   case 134:
      UNREACHABLE();
   }

   return VCHIQ_SUCCESS;
}
