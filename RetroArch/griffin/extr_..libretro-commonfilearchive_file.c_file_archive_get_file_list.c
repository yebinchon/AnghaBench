
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct TYPE_2__ {int found; scalar_t__ size; int * needle; int * opt_file; } ;
struct archive_extract_userdata {int found_file; int list_only; char* archive_name; struct string_list* list; TYPE_1__ decomp_state; int * dec; scalar_t__ crc; int * context; int * ext; scalar_t__ archive_path_size; int * extraction_directory; int * extracted_file_path; int * first_extracted_file_path; int archive_path; } ;


 int file_archive_get_file_list_cb ;
 int file_archive_walk (char const*,char const*,int ,struct archive_extract_userdata*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_list_new () ;
 int strlcpy (int ,char const*,int) ;

struct string_list *file_archive_get_file_list(const char *path,
      const char *valid_exts)
{
   struct archive_extract_userdata userdata;

   strlcpy(userdata.archive_path, path, sizeof(userdata.archive_path));
   userdata.first_extracted_file_path = ((void*)0);
   userdata.extracted_file_path = ((void*)0);
   userdata.extraction_directory = ((void*)0);
   userdata.archive_path_size = 0;
   userdata.ext = ((void*)0);
   userdata.list = string_list_new();
   userdata.found_file = 0;
   userdata.list_only = 1;
   userdata.context = ((void*)0);
   userdata.archive_name[0] = '\0';
   userdata.crc = 0;
   userdata.dec = ((void*)0);

   userdata.decomp_state.opt_file = ((void*)0);
   userdata.decomp_state.needle = ((void*)0);
   userdata.decomp_state.size = 0;
   userdata.decomp_state.found = 0;

   if (!userdata.list)
      goto error;

   if (!file_archive_walk(path, valid_exts,
         file_archive_get_file_list_cb, &userdata))
      goto error;

   return userdata.list;

error:
   if (userdata.list)
      string_list_free(userdata.list);
   return ((void*)0);
}
