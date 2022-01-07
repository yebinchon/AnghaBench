
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ hash; struct TYPE_13__* next; int value; } ;
typedef TYPE_4__ dat_converter_match_key_t ;
struct TYPE_14__ {scalar_t__ type; int count; TYPE_3__* values; } ;
typedef TYPE_5__ dat_converter_list_t ;
struct TYPE_10__ {char const* string; TYPE_5__* list; } ;
struct TYPE_11__ {scalar_t__ hash; scalar_t__ type; TYPE_1__ value; int key; } ;
struct TYPE_12__ {TYPE_2__ map; } ;


 scalar_t__ DAT_CONVERTER_MAP_LIST ;
 scalar_t__ DAT_CONVERTER_STRING_MAP ;
 int retro_assert (TYPE_4__*) ;
 TYPE_4__* string_is_equal (int ,int ) ;

__attribute__((used)) static const char* dat_converter_get_match(
      dat_converter_list_t* list,
      dat_converter_match_key_t* match_key)
{
   int i;

   retro_assert(match_key);

   if (list->type != DAT_CONVERTER_MAP_LIST)
      return ((void*)0);

   for (i = 0; i < list->count; i++)
   {
      if (list->values[i].map.hash == match_key->hash)
      {
         retro_assert(string_is_equal(list->values[i].map.key, match_key->value));

         if (match_key->next)
            return dat_converter_get_match(
                  list->values[i].map.value.list, match_key->next);

         if ((list->values[i].map.type == DAT_CONVERTER_STRING_MAP))
            return list->values[i].map.value.string;

         return ((void*)0);

      }
   }
   return ((void*)0);
}
