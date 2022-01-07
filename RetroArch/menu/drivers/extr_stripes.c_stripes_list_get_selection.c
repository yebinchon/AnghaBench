
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t categories_selection_ptr; } ;
typedef TYPE_1__ stripes_handle_t ;



__attribute__((used)) static size_t stripes_list_get_selection(void *data)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;

   if (!stripes)
      return 0;

   return stripes->categories_selection_ptr;
}
