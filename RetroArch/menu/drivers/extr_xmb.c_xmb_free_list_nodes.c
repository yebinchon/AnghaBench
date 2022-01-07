
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xmb_node_t ;
struct TYPE_8__ {TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_7__ {int * userdata; } ;


 int file_list_free_actiondata (TYPE_2__*,unsigned int) ;
 int file_list_get_size (TYPE_2__*) ;
 scalar_t__ file_list_get_userdata_at_offset (TYPE_2__*,unsigned int) ;
 int xmb_free_node (int *) ;

__attribute__((used)) static void xmb_free_list_nodes(file_list_t *list, bool actiondata)
{
   unsigned i, size = (unsigned)file_list_get_size(list);

   for (i = 0; i < size; ++i)
   {
      xmb_free_node((xmb_node_t*)file_list_get_userdata_at_offset(list, i));


      list->list[i].userdata = ((void*)0);

      if (actiondata)
         file_list_free_actiondata(list, i);
   }
}
