
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sevenzip_context_t {unsigned int index; } ;
struct archive_extract_userdata {char* extracted_file_path; int crc; } ;
struct TYPE_4__ {scalar_t__ stream; } ;
typedef TYPE_1__ file_archive_transfer_t ;
typedef int (* file_archive_file_cb ) (char*,char const*,int const*,unsigned int,int ,int ,int ,struct archive_extract_userdata*) ;


 int PATH_MAX_LENGTH ;
 int sevenzip_parse_file_iterate_step_internal (TYPE_1__*,char*,int const**,unsigned int*,int *,int *,int *,unsigned int*,struct archive_extract_userdata*) ;

__attribute__((used)) static int sevenzip_parse_file_iterate_step(file_archive_transfer_t *state,
      const char *valid_exts,
      struct archive_extract_userdata *userdata, file_archive_file_cb file_cb)
{
   char filename[PATH_MAX_LENGTH];
   const uint8_t *cdata = ((void*)0);
   uint32_t checksum = 0;
   uint32_t size = 0;
   uint32_t csize = 0;
   unsigned cmode = 0;
   unsigned payload = 0;
   struct sevenzip_context_t *sevenzip_context = ((void*)0);
   int ret;

   filename[0] = '\0';

   ret = sevenzip_parse_file_iterate_step_internal(state, filename,
         &cdata, &cmode, &size, &csize,
         &checksum, &payload, userdata);

   if (ret != 1)
      return ret;

   userdata->extracted_file_path = filename;
   userdata->crc = checksum;

   if (file_cb && !file_cb(filename, valid_exts, cdata, cmode,
            csize, size, checksum, userdata))
      return 0;

   sevenzip_context = (struct sevenzip_context_t*)state->stream;

   sevenzip_context->index += payload;

   return 1;
}
