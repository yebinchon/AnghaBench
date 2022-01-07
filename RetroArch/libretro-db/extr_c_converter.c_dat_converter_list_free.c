
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* list; } ;
struct TYPE_7__ {TYPE_1__ value; int type; } ;
struct TYPE_8__ {int type; size_t count; struct TYPE_8__* values; int bt_root; TYPE_2__ map; struct TYPE_8__* list; } ;
typedef TYPE_3__ dat_converter_list_t ;



 int DAT_CONVERTER_LIST_MAP ;

 int dat_converter_bt_node_free (int ) ;
 int free (TYPE_3__*) ;

__attribute__((used)) static void dat_converter_list_free(dat_converter_list_t* list)
{
   if (!list)
      return;
   switch (list->type)
   {
   case 129:
      while (list->count--)
         dat_converter_list_free(list->values[list->count].list);
      break;
   case 128:
      while (list->count--)
      {
         if (list->values[list->count].map.type == DAT_CONVERTER_LIST_MAP)
            dat_converter_list_free(list->values[list->count].map.value.list);
      }
      dat_converter_bt_node_free(list->bt_root);
      break;
   default:
      break;
   }

   free(list->values);
   free(list);
}
