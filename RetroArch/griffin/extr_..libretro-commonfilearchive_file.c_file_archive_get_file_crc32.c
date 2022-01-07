
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int member_0; } ;
struct archive_extract_userdata {scalar_t__ crc; int extracted_file_path; TYPE_1__ member_0; } ;
struct TYPE_6__ {scalar_t__ type; int * backend; int * data; int * directory; int * footer; int * stream; int * handle; scalar_t__ archive_size; } ;
typedef TYPE_2__ file_archive_transfer_t ;


 scalar_t__ ARCHIVE_TRANSFER_INIT ;
 scalar_t__ ARCHIVE_TRANSFER_ITERATE ;
 int file_archive_parse_file_iterate (TYPE_2__*,int*,char const*,int *,int *,struct archive_extract_userdata*) ;
 int file_archive_parse_file_iterate_stop (TYPE_2__*) ;
 int path_contains_compressed_file (char const*) ;
 char* path_get_archive_delim (char const*) ;
 scalar_t__ string_is_equal (int ,char const*) ;

uint32_t file_archive_get_file_crc32(const char *path)
{
   file_archive_transfer_t state;
   struct archive_extract_userdata userdata = {{0}};
   bool returnerr = 0;
   const char *archive_path = ((void*)0);
   bool contains_compressed = path_contains_compressed_file(path);

   if (contains_compressed)
   {
      archive_path = path_get_archive_delim(path);


      if (archive_path)
         archive_path += 1;
   }

   state.type = ARCHIVE_TRANSFER_INIT;
   state.archive_size = 0;
   state.handle = ((void*)0);
   state.stream = ((void*)0);
   state.footer = ((void*)0);
   state.directory = ((void*)0);
   state.data = ((void*)0);
   state.backend = ((void*)0);



   file_archive_parse_file_iterate(&state,
            &returnerr, path, ((void*)0), ((void*)0),
            &userdata);

   for (;;)
   {

      if (state.type == ARCHIVE_TRANSFER_ITERATE)
         file_archive_parse_file_iterate(&state,
                  &returnerr, path, ((void*)0), ((void*)0),
                  &userdata);




      if (!contains_compressed)
         break;


      if (archive_path)
      {
         if (string_is_equal(userdata.extracted_file_path, archive_path))
            break;
      }
      else
         break;
   }

   file_archive_parse_file_iterate_stop(&state);

   if (userdata.crc)
      return userdata.crc;

   return 0;
}
