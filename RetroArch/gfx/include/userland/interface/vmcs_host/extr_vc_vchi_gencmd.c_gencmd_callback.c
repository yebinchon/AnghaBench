
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_EVENT_T ;
typedef scalar_t__ VCHI_CALLBACK_REASON_T ;


 scalar_t__ const VCHI_CALLBACK_MSG_AVAILABLE ;
 int vcos_event_signal (int *) ;

__attribute__((used)) static void gencmd_callback( void *callback_param,
                             const VCHI_CALLBACK_REASON_T reason,
                             void *msg_handle ) {

   VCOS_EVENT_T *event = (VCOS_EVENT_T *)callback_param;

 (void)msg_handle;
   if ( reason != VCHI_CALLBACK_MSG_AVAILABLE || !event)
      return;

   vcos_event_signal(event);
}
