
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ real_checksum; int stream; TYPE_2__* backend; scalar_t__ data; } ;
typedef TYPE_1__ file_archive_file_handle_t ;
struct TYPE_5__ {scalar_t__ (* stream_crc_calculate ) (int ,scalar_t__,scalar_t__) ;int (* stream_free ) (int ) ;} ;


 int filestream_write_file (char const*,scalar_t__,scalar_t__) ;
 int free (scalar_t__) ;
 int printf (char*,unsigned int,unsigned int) ;
 TYPE_2__ sevenzip_backend ;
 scalar_t__ stub1 (int ,scalar_t__,scalar_t__) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

__attribute__((used)) static int file_archive_decompress_data_to_file(
      file_archive_file_handle_t *handle,
      int ret,
      const char *path,
      const char *valid_exts,
      const uint8_t *cdata,
      uint32_t csize,
      uint32_t size,
      uint32_t checksum)
{
   if (!handle || ret == -1)
   {
      ret = 0;
      goto end;
   }
   if (!filestream_write_file(path, handle->data, size))
   {
      ret = 0;
      goto end;
   }

end:

   if (handle)
   {
      if (handle->backend)
      {
         if (handle->backend->stream_free)
         {
            handle->backend->stream_free(handle->stream);

         }
      }
   }

   return ret;
}
