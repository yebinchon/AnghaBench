
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_EVENT_T ;
typedef scalar_t__ VCHI_CALLBACK_REASON_T ;


 scalar_t__ const VCHI_CALLBACK_MSG_AVAILABLE ;
 int VCOS_FUNCTION ;
 int vcos_event_signal (int *) ;
 int vcos_log_trace (char*,int ) ;

__attribute__((used)) static void tvservice_notify_callback( void *callback_param,
                                       const VCHI_CALLBACK_REASON_T reason,
                                       void *msg_handle ) {
   VCOS_EVENT_T *event = (VCOS_EVENT_T *)callback_param;

   vcos_log_trace("[%s]", VCOS_FUNCTION);
   (void)msg_handle;

   if ( reason != VCHI_CALLBACK_MSG_AVAILABLE || event == ((void*)0))
      return;

   vcos_event_signal(event);
}
