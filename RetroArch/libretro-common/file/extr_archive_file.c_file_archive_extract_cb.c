
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wanted_file ;
typedef int uint8_t ;
typedef int uint32_t ;
struct archive_extract_userdata {char const* archive_path; int found_file; int extracted_file_path; int first_extracted_file_path; int extraction_directory; int ext; } ;
typedef int new_path ;


 int PATH_MAX_LENGTH ;
 scalar_t__ file_archive_perform_mode (char*,char const*,int const*,unsigned int,int ,int ,int ,struct archive_extract_userdata*) ;
 int fill_pathname_join (char*,int ,int ,int) ;
 int fill_pathname_resolve_relative (char*,char const*,int ,int) ;
 int path_basename (char const*) ;
 char* path_get_archive_delim (char const*) ;
 char* path_get_extension (char const*) ;
 int strdup (char*) ;
 int string_is_equal_noncase (int ,char*) ;
 scalar_t__ string_list_find_elem (int ,char const*) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static int file_archive_extract_cb(const char *name, const char *valid_exts,
      const uint8_t *cdata,
      unsigned cmode, uint32_t csize, uint32_t size,
      uint32_t checksum, struct archive_extract_userdata *userdata)
{
   const char *ext = path_get_extension(name);


   if (ext && string_list_find_elem(userdata->ext, ext))
   {
      char new_path[PATH_MAX_LENGTH];
      char wanted_file[PATH_MAX_LENGTH];
      const char *delim = ((void*)0);

      new_path[0] = wanted_file[0] = '\0';

      if (userdata->extraction_directory)
         fill_pathname_join(new_path, userdata->extraction_directory,
               path_basename(name), sizeof(new_path));
      else
         fill_pathname_resolve_relative(new_path, userdata->archive_path,
               path_basename(name), sizeof(new_path));

      userdata->first_extracted_file_path = strdup(new_path);

      delim = path_get_archive_delim(userdata->archive_path);

      if (delim)
      {
         strlcpy(wanted_file, delim + 1, sizeof(wanted_file));

         if (!string_is_equal_noncase(userdata->extracted_file_path,
                   wanted_file))
           return 1;
      }
      else
         strlcpy(wanted_file, userdata->archive_path, sizeof(wanted_file));

      if (file_archive_perform_mode(new_path,
                valid_exts, cdata, cmode, csize, size,
                0, userdata))
         userdata->found_file = 1;

      return 0;
   }

   return 1;
}
