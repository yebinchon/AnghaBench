
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qnx_input_t ;
typedef int bps_event_t ;


 int BPS_SUCCESS ;
 int bps_event_get_domain (int *) ;
 int bps_get_event (int **,int ) ;
 int navigator_get_domain () ;
 int qnx_handle_navigator_event (int *,int *) ;
 int qnx_handle_screen_event (int *,int *) ;
 int screen_get_domain () ;

__attribute__((used)) static void qnx_input_poll(void *data)
{
   qnx_input_t *qnx = (qnx_input_t*)data;


   while(1)
   {
      bps_event_t *event = ((void*)0);
      int rc = bps_get_event(&event, 0);

      if(rc == BPS_SUCCESS)
      {
         int domain;

         if (!event)
            break;

         domain = bps_event_get_domain(event);
         if (domain == navigator_get_domain())
            qnx_handle_navigator_event(qnx, event);
         else if (domain == screen_get_domain())
            qnx_handle_screen_event(qnx, event);
      }
   }
}
