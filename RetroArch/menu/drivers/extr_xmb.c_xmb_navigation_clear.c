
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmb_handle_t ;


 int xmb_selection_pointer_changed (int *,int) ;

__attribute__((used)) static void xmb_navigation_clear(void *data, bool pending_push)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;
   if (!pending_push)
      xmb_selection_pointer_changed(xmb, 1);
}
