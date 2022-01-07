
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t count; char* all_ext; TYPE_1__* list; } ;
typedef TYPE_2__ core_info_list_t ;
struct TYPE_4__ {char* supported_extensions; } ;


 scalar_t__ STRLEN_CONST (char*) ;
 scalar_t__ calloc (int,size_t) ;
 int strlcat (char*,char*,size_t) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void core_info_list_resolve_all_extensions(
      core_info_list_t *core_info_list)
{
   size_t i = 0;
   size_t all_ext_len = 0;
   char *all_ext = ((void*)0);

   for (i = 0; i < core_info_list->count; i++)
   {
      if (core_info_list->list[i].supported_extensions)
         all_ext_len +=
            (strlen(core_info_list->list[i].supported_extensions) + 2);
   }

   all_ext_len += STRLEN_CONST("7z|") + STRLEN_CONST("zip|");

   all_ext = (char*)calloc(1, all_ext_len);

   if (!all_ext)
      return;

   core_info_list->all_ext = all_ext;

   for (i = 0; i < core_info_list->count; i++)
   {
      if (!core_info_list->list[i].supported_extensions)
         continue;

      strlcat(core_info_list->all_ext,
            core_info_list->list[i].supported_extensions, all_ext_len);
      strlcat(core_info_list->all_ext, "|", all_ext_len);
   }






}
