
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t categories_selection_ptr; } ;
typedef TYPE_1__ xmb_handle_t ;



__attribute__((used)) static size_t xmb_list_get_selection(void *data)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;

   if (!xmb)
      return 0;

   return xmb->categories_selection_ptr;
}
