
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_EVENT_T ;
typedef int VCHI_CALLBACK_REASON_T ;





 int vcos_event_signal (int *) ;

__attribute__((used)) static void filesys_callback( void *callback_param,
                             const VCHI_CALLBACK_REASON_T reason,
                             void *msg_handle )
{
   (void)msg_handle;

   switch( reason ) {

   case 128:
      {
         VCOS_EVENT_T *event = (VCOS_EVENT_T *) callback_param;
         if(event)
            vcos_event_signal(event);
      }
      break;

   case 130:
      break;
   case 129:
      break;

   default:
      return;
   }
}
