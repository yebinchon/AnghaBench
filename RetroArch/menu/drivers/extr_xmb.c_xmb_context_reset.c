
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmb_handle_t ;


 int video_driver_monitor_reset () ;
 int xmb_context_reset_internal (int *,int,int) ;

__attribute__((used)) static void xmb_context_reset(void *data, bool is_threaded)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;

   if (xmb)
      xmb_context_reset_internal(xmb, is_threaded, 1);
   video_driver_monitor_reset();
}
