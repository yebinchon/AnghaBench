
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_6__* list; } ;
struct TYPE_15__ {int key; int hash; scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_3__ dat_converter_map_t ;
struct TYPE_16__ {scalar_t__ type; TYPE_2__* values; } ;
typedef TYPE_4__ dat_converter_list_t ;
struct TYPE_17__ {int hash; size_t index; struct TYPE_17__* right; struct TYPE_17__* left; } ;
typedef TYPE_5__ dat_converter_bt_node_t ;
struct TYPE_18__ {scalar_t__ type; int count; int * values; } ;
struct TYPE_14__ {TYPE_3__ map; } ;


 scalar_t__ DAT_CONVERTER_LIST_MAP ;
 scalar_t__ DAT_CONVERTER_MAP_LIST ;
 TYPE_5__* calloc (int,int) ;
 int dat_converter_list_append (TYPE_6__*,int *) ;
 int dat_converter_list_free (TYPE_6__*) ;
 int retro_assert (int) ;
 int strcmp (int,int) ;

__attribute__((used)) static dat_converter_bt_node_t* dat_converter_bt_node_insert(
      dat_converter_list_t* list,
      dat_converter_bt_node_t** node,
      dat_converter_map_t* map)
{
   retro_assert(map->key);
   retro_assert(list->type == DAT_CONVERTER_MAP_LIST);

   if (!*node)
   {
      *node = calloc(1, sizeof(dat_converter_bt_node_t));
      return *node;
   }

   int diff = (*node)->hash - map->hash;

   if (!diff)
      diff = strcmp(list->values[(*node)->index].map.key, map->key);

   if (diff < 0)
      return dat_converter_bt_node_insert(list, &(*node)->left, map);
   else if (diff > 0)
      return dat_converter_bt_node_insert(list, &(*node)->right, map);



   if (list->values[(*node)->index].map.type == DAT_CONVERTER_LIST_MAP)
   {
      if (map->type == DAT_CONVERTER_LIST_MAP)
      {
         int i;

         retro_assert(list->values[(*node)->index].map.value.list->type
               == map->value.list->type);

         for (i = 0; i < map->value.list->count; i++)
            dat_converter_list_append(
                  list->values[(*node)->index].map.value.list,
                  &map->value.list->values[i]);


         map->value.list->count = 0;
         dat_converter_list_free(map->value.list);
      }
   }
   else
      list->values[(*node)->index].map = *map;

   return ((void*)0);
}
