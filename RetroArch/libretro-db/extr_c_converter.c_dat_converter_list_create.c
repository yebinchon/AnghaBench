
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int capacity; int * values; int * bt_root; scalar_t__ count; int type; } ;
typedef TYPE_1__ dat_converter_list_t ;
typedef int dat_converter_list_item_t ;
typedef int dat_converter_list_enum ;


 TYPE_1__* malloc (int) ;

__attribute__((used)) static dat_converter_list_t* dat_converter_list_create(
      dat_converter_list_enum type)
{
   dat_converter_list_t* list = malloc(sizeof(*list));

   list->type = type;
   list->count = 0;
   list->capacity = (1 << 2);
   list->bt_root = ((void*)0);
   list->values = (dat_converter_list_item_t*)malloc(
         sizeof(*list->values) * list->capacity);

   return list;
}
