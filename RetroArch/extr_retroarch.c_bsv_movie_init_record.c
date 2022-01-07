
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef TYPE_1__ retro_ctx_size_info_t ;
struct TYPE_8__ {int* data; int size; } ;
typedef TYPE_2__ retro_ctx_serialize_info_t ;
typedef int intfstream_t ;
typedef int header ;
struct TYPE_9__ {int min_file_pos; int state_size; int* state; int * file; } ;
typedef TYPE_3__ bsv_movie_t ;


 int BSV_MAGIC ;
 size_t CRC_INDEX ;
 size_t MAGIC_INDEX ;
 int RARCH_ERR (char*,...) ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_WRITE ;
 size_t STATE_SIZE_INDEX ;
 int content_get_crc () ;
 int core_serialize (TYPE_2__*) ;
 int core_serialize_size (TYPE_1__*) ;
 int * intfstream_open_file (char const*,int ,int ) ;
 int intfstream_write (int *,int*,int) ;
 scalar_t__ malloc (int) ;
 int swap_if_big32 (int) ;
 int swap_if_little32 (int ) ;

__attribute__((used)) static bool bsv_movie_init_record(
      bsv_movie_t *handle, const char *path)
{
   retro_ctx_size_info_t info;
   uint32_t state_size = 0;
   uint32_t content_crc = 0;
   uint32_t header[4] = {0};
   intfstream_t *file = intfstream_open_file(path,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!file)
   {
      RARCH_ERR("Could not open BSV file for recording, path : \"%s\".\n", path);
      return 0;
   }

   handle->file = file;

   content_crc = content_get_crc();



   header[MAGIC_INDEX] = swap_if_little32(BSV_MAGIC);
   header[CRC_INDEX] = swap_if_big32(content_crc);

   core_serialize_size(&info);

   state_size = (unsigned)info.size;

   header[STATE_SIZE_INDEX] = swap_if_big32(state_size);







   intfstream_write(handle->file, header, 4 * sizeof(uint32_t));

   handle->min_file_pos = sizeof(header) + state_size;
   handle->state_size = state_size;

   if (state_size)
   {
      retro_ctx_serialize_info_t serial_info;

      handle->state = (uint8_t*)malloc(state_size);
      if (!handle->state)
         return 0;

      serial_info.data = handle->state;
      serial_info.size = state_size;

      core_serialize(&serial_info);

      intfstream_write(handle->file,
            handle->state, state_size);
   }

   return 1;
}
