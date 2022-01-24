#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_6__* list; } ;
struct TYPE_15__ {int key; int hash; scalar_t__ type; TYPE_1__ value; } ;
typedef  TYPE_3__ dat_converter_map_t ;
struct TYPE_16__ {scalar_t__ type; TYPE_2__* values; } ;
typedef  TYPE_4__ dat_converter_list_t ;
struct TYPE_17__ {int hash; size_t index; struct TYPE_17__* right; struct TYPE_17__* left; } ;
typedef  TYPE_5__ dat_converter_bt_node_t ;
struct TYPE_18__ {scalar_t__ type; int count; int /*<<< orphan*/ * values; } ;
struct TYPE_14__ {TYPE_3__ map; } ;

/* Variables and functions */
 scalar_t__ DAT_CONVERTER_LIST_MAP ; 
 scalar_t__ DAT_CONVERTER_MAP_LIST ; 
 TYPE_5__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static dat_converter_bt_node_t* FUNC5(
      dat_converter_list_t* list,
      dat_converter_bt_node_t** node,
      dat_converter_map_t* map)
{
   FUNC3(map->key);
   FUNC3(list->type == DAT_CONVERTER_MAP_LIST);

   if (!*node)
   {
      *node = FUNC0(1, sizeof(dat_converter_bt_node_t));
      return *node;
   }

   int diff = (*node)->hash - map->hash;

   if (!diff)
      diff = FUNC4(list->values[(*node)->index].map.key, map->key);

   if (diff < 0)
      return FUNC5(list, &(*node)->left, map);
   else if (diff > 0)
      return FUNC5(list, &(*node)->right, map);

   /* found match */

   if (list->values[(*node)->index].map.type == DAT_CONVERTER_LIST_MAP)
   {
      if (map->type == DAT_CONVERTER_LIST_MAP)
      {
         int i;

         FUNC3(list->values[(*node)->index].map.value.list->type
               == map->value.list->type);

         for (i = 0; i < map->value.list->count; i++)
            FUNC1(
                  list->values[(*node)->index].map.value.list,
                  &map->value.list->values[i]);

         /* set count to 0 to prevent freeing the child nodes */
         map->value.list->count = 0;
         FUNC2(map->value.list);
      }
   }
   else
      list->values[(*node)->index].map = *map;

   return NULL;
}