
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t list_ptr; TYPE_2__* list; } ;
typedef TYPE_3__ database_info_handle_t ;
struct TYPE_6__ {size_t size; TYPE_1__* elems; } ;
struct TYPE_5__ {char const* data; } ;



__attribute__((used)) static const char *database_info_get_current_element_name(
      database_info_handle_t *handle)
{
   if (!handle || !handle->list)
      return ((void*)0);

   while (handle->list->elems[handle->list_ptr].data == ((void*)0))
   {
      if (++handle->list_ptr >= handle->list->size)
         return ((void*)0);
   }
   return handle->list->elems[handle->list_ptr].data;
}
