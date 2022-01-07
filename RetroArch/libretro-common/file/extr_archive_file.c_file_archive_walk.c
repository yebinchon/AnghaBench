
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct archive_extract_userdata {int dummy; } ;
struct TYPE_3__ {int * backend; int * data; int * directory; int * footer; int * stream; int * handle; scalar_t__ archive_size; int type; } ;
typedef TYPE_1__ file_archive_transfer_t ;
typedef int file_archive_file_cb ;


 int ARCHIVE_TRANSFER_INIT ;
 scalar_t__ file_archive_parse_file_iterate (TYPE_1__*,int*,char const*,char const*,int ,struct archive_extract_userdata*) ;

__attribute__((used)) static bool file_archive_walk(const char *file, const char *valid_exts,
      file_archive_file_cb file_cb, struct archive_extract_userdata *userdata)
{
   file_archive_transfer_t state;
   bool returnerr = 1;

   state.type = ARCHIVE_TRANSFER_INIT;
   state.archive_size = 0;
   state.handle = ((void*)0);
   state.stream = ((void*)0);
   state.footer = ((void*)0);
   state.directory = ((void*)0);
   state.data = ((void*)0);
   state.backend = ((void*)0);

   for (;;)
   {
      if (file_archive_parse_file_iterate(&state, &returnerr, file,
            valid_exts, file_cb, userdata) != 0)
         break;
   }

   return returnerr;
}
