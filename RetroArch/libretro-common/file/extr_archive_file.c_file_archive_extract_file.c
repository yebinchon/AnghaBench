
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct TYPE_2__ {int found; scalar_t__ size; int * needle; int * opt_file; } ;
struct archive_extract_userdata {char* archive_path; char const* extraction_directory; size_t archive_path_size; int found_file; int list_only; char* archive_name; int * first_extracted_file_path; TYPE_1__ decomp_state; int * dec; scalar_t__ crc; int * context; int * list; struct string_list* ext; int * extracted_file_path; } ;


 int file_archive_extract_cb ;
 int file_archive_walk (char*,char const*,int ,struct archive_extract_userdata*) ;
 int free (int *) ;
 int string_is_empty (int *) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;
 int strlcpy (char*,int *,size_t) ;

bool file_archive_extract_file(
      char *archive_path,
      size_t archive_path_size,
      const char *valid_exts,
      const char *extraction_directory,
      char *out_path, size_t len)
{
   struct archive_extract_userdata userdata;
   bool ret = 1;
   struct string_list *list = string_split(valid_exts, "|");

   userdata.archive_path[0] = '\0';
   userdata.first_extracted_file_path = ((void*)0);
   userdata.extracted_file_path = ((void*)0);
   userdata.extraction_directory = extraction_directory;
   userdata.archive_path_size = archive_path_size;
   userdata.ext = list;
   userdata.list = ((void*)0);
   userdata.found_file = 0;
   userdata.list_only = 0;
   userdata.context = ((void*)0);
   userdata.archive_name[0] = '\0';
   userdata.crc = 0;
   userdata.dec = ((void*)0);

   userdata.decomp_state.opt_file = ((void*)0);
   userdata.decomp_state.needle = ((void*)0);
   userdata.decomp_state.size = 0;
   userdata.decomp_state.found = 0;

   if (!list)
   {
      ret = 0;
      goto end;
   }

   if (!file_archive_walk(archive_path, valid_exts,
            file_archive_extract_cb, &userdata))
   {

      ret = 0;
      goto end;
   }

   if (!userdata.found_file)
   {


      ret = 0;
      goto end;
   }

   if (!string_is_empty(userdata.first_extracted_file_path))
      strlcpy(out_path, userdata.first_extracted_file_path, len);

end:
   if (userdata.first_extracted_file_path)
      free(userdata.first_extracted_file_path);
   if (list)
      string_list_free(list);
   return ret;
}
