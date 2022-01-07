
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t size; TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_5__ {char* alt; char* path; } ;


 int file_list_get_label_at_offset (TYPE_2__ const*,size_t,char const**) ;
 scalar_t__ strcasestr (char const*,char const*) ;

bool file_list_search(const file_list_t *list, const char *needle, size_t *idx)
{
   size_t i;
   bool ret = 0;

   if (!list)
      return 0;

   for (i = 0; i < list->size; i++)
   {
      const char *str = ((void*)0);
      const char *alt = list->list[i].alt
            ? list->list[i].alt
            : list->list[i].path;

      if (!alt)
      {
         file_list_get_label_at_offset(list, i, &alt);
         if (!alt)
            continue;
      }

      str = (const char *)strcasestr(alt, needle);
      if (str == alt)
      {

         *idx = i;
         ret = 1;
         break;
      }
      else if (str && !ret)
      {


         *idx = i;
         ret = 1;
      }
   }

   return ret;
}
