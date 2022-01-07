
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct archive_extract_userdata {int archive_path; int context; } ;
struct TYPE_5__ {int stream; TYPE_3__* backend; int real_checksum; int * data; } ;
typedef TYPE_1__ file_archive_file_handle_t ;
struct TYPE_6__ {int (* stream_decompress_data_to_file_iterate ) (int ) ;int (* stream_decompress_data_to_file_init ) (TYPE_1__*,int const*,int ,int ) ;} ;




 int file_archive_decompress_data_to_file (TYPE_1__*,int,char const*,char const*,int const*,int ,int ,int ) ;
 TYPE_3__* file_archive_get_file_backend (int ) ;
 int filestream_write_file (char const*,int const*,int ) ;
 int stub1 (TYPE_1__*,int const*,int ,int ) ;
 int stub2 (int ) ;

bool file_archive_perform_mode(const char *path, const char *valid_exts,
      const uint8_t *cdata, unsigned cmode, uint32_t csize, uint32_t size,
      uint32_t crc32, struct archive_extract_userdata *userdata)
{
   switch (cmode)
   {
      case 128:
         if (!filestream_write_file(path, cdata, size))
            return 0;
         break;

      case 129:
         {
            int ret = 0;
            file_archive_file_handle_t handle;

            handle.stream = userdata->context;
            handle.data = ((void*)0);
            handle.real_checksum = 0;
            handle.backend = file_archive_get_file_backend(userdata->archive_path);

            if (!handle.backend)
               return 0;

            if (!handle.backend->stream_decompress_data_to_file_init(&handle,
                     cdata, csize, size))
               return 0;

            do
            {
               ret = handle.backend->stream_decompress_data_to_file_iterate(
                     handle.stream);
            }while(ret == 0);

            if (!file_archive_decompress_data_to_file(&handle,
                     ret, path, valid_exts,
                     cdata, csize, size, crc32))
               return 0;
         }
         break;
      default:
         return 0;
   }

   return 1;
}
