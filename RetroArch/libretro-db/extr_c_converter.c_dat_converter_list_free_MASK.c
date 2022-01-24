#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* list; } ;
struct TYPE_7__ {TYPE_1__ value; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int type; size_t count; struct TYPE_8__* values; int /*<<< orphan*/  bt_root; TYPE_2__ map; struct TYPE_8__* list; } ;
typedef  TYPE_3__ dat_converter_list_t ;

/* Variables and functions */
#define  DAT_CONVERTER_LIST_LIST 129 
 int /*<<< orphan*/  DAT_CONVERTER_LIST_MAP ; 
#define  DAT_CONVERTER_MAP_LIST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC2(dat_converter_list_t* list)
{
   if (!list)
      return;
   switch (list->type)
   {
   case DAT_CONVERTER_LIST_LIST:
      while (list->count--)
         FUNC2(list->values[list->count].list);
      break;
   case DAT_CONVERTER_MAP_LIST:
      while (list->count--)
      {
         if (list->values[list->count].map.type == DAT_CONVERTER_LIST_MAP)
            FUNC2(list->values[list->count].map.value.list);
      }
      FUNC0(list->bt_root);
      break;
   default:
      break;
   }

   FUNC1(list->values);
   FUNC1(list);
}