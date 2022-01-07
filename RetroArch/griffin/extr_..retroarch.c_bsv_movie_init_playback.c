
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef TYPE_1__ retro_ctx_size_info_t ;
struct TYPE_8__ {scalar_t__* data_const; scalar_t__ size; } ;
typedef TYPE_2__ retro_ctx_serialize_info_t ;
typedef int intfstream_t ;
typedef int header ;
struct TYPE_9__ {int playback; scalar_t__* state; int min_file_pos; int * file; scalar_t__ state_size; } ;
typedef TYPE_3__ bsv_movie_t ;


 scalar_t__ BSV_MAGIC ;
 size_t CRC_INDEX ;
 size_t MAGIC_INDEX ;
 int MSG_COULD_NOT_READ_STATE_FROM_MOVIE ;
 int MSG_CRC32_CHECKSUM_MISMATCH ;
 int MSG_MOVIE_FILE_IS_NOT_A_VALID_BSV1_FILE ;
 int MSG_MOVIE_FORMAT_DIFFERENT_SERIALIZER_VERSION ;
 int RARCH_ERR (char*,scalar_t__) ;
 int RARCH_WARN (char*,scalar_t__) ;
 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 size_t STATE_SIZE_INDEX ;
 scalar_t__ content_get_crc () ;
 int core_serialize_size (TYPE_1__*) ;
 int core_unserialize (TYPE_2__*) ;
 int * intfstream_open_file (char const*,int ,int ) ;
 scalar_t__ intfstream_read (int *,scalar_t__*,scalar_t__) ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ msg_hash_to_str (int ) ;
 scalar_t__ swap_if_big32 (scalar_t__) ;
 scalar_t__ swap_if_little32 (scalar_t__) ;

__attribute__((used)) static bool bsv_movie_init_playback(
      bsv_movie_t *handle, const char *path)
{
   uint32_t state_size = 0;
   uint32_t content_crc = 0;
   uint32_t header[4] = {0};
   intfstream_t *file = intfstream_open_file(path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!file)
   {
      RARCH_ERR("Could not open BSV file for playback, path : \"%s\".\n", path);
      return 0;
   }

   handle->file = file;
   handle->playback = 1;

   intfstream_read(handle->file, header, sizeof(uint32_t) * 4);


   if (swap_if_little32(header[MAGIC_INDEX]) != BSV_MAGIC
         && swap_if_big32(header[MAGIC_INDEX]) != BSV_MAGIC)
   {
      RARCH_ERR("%s\n", msg_hash_to_str(MSG_MOVIE_FILE_IS_NOT_A_VALID_BSV1_FILE));
      return 0;
   }

   content_crc = content_get_crc();

   if (content_crc != 0)
      if (swap_if_big32(header[CRC_INDEX]) != content_crc)
         RARCH_WARN("%s.\n", msg_hash_to_str(MSG_CRC32_CHECKSUM_MISMATCH));

   state_size = swap_if_big32(header[STATE_SIZE_INDEX]);
   if (state_size)
   {
      retro_ctx_size_info_t info;
      retro_ctx_serialize_info_t serial_info;
      uint8_t *buf = (uint8_t*)malloc(state_size);

      if (!buf)
         return 0;

      handle->state = buf;
      handle->state_size = state_size;
      if (intfstream_read(handle->file,
               handle->state, state_size) != state_size)
      {
         RARCH_ERR("%s\n", msg_hash_to_str(MSG_COULD_NOT_READ_STATE_FROM_MOVIE));
         return 0;
      }

      core_serialize_size( &info);

      if (info.size == state_size)
      {
         serial_info.data_const = handle->state;
         serial_info.size = state_size;
         core_unserialize(&serial_info);
      }
      else
         RARCH_WARN("%s\n",
               msg_hash_to_str(MSG_MOVIE_FORMAT_DIFFERENT_SERIALIZER_VERSION));
   }

   handle->min_file_pos = sizeof(header) + state_size;

   return 1;
}
