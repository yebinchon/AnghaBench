#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef  TYPE_1__ retro_ctx_size_info_t ;
struct TYPE_8__ {scalar_t__* data_const; scalar_t__ size; } ;
typedef  TYPE_2__ retro_ctx_serialize_info_t ;
typedef  int /*<<< orphan*/  intfstream_t ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_9__ {int playback; scalar_t__* state; int min_file_pos; int /*<<< orphan*/ * file; scalar_t__ state_size; } ;
typedef  TYPE_3__ bsv_movie_t ;

/* Variables and functions */
 scalar_t__ BSV_MAGIC ; 
 size_t CRC_INDEX ; 
 size_t MAGIC_INDEX ; 
 int /*<<< orphan*/  MSG_COULD_NOT_READ_STATE_FROM_MOVIE ; 
 int /*<<< orphan*/  MSG_CRC32_CHECKSUM_MISMATCH ; 
 int /*<<< orphan*/  MSG_MOVIE_FILE_IS_NOT_A_VALID_BSV1_FILE ; 
 int /*<<< orphan*/  MSG_MOVIE_FORMAT_DIFFERENT_SERIALIZER_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_READ ; 
 size_t STATE_SIZE_INDEX ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static bool FUNC11(
      bsv_movie_t *handle, const char *path)
{
   uint32_t state_size       = 0;
   uint32_t content_crc      = 0;
   uint32_t header[4]        = {0};
   intfstream_t *file        = FUNC5(path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!file)
   {
      FUNC0("Could not open BSV file for playback, path : \"%s\".\n", path);
      return false;
   }

   handle->file              = file;
   handle->playback          = true;

   FUNC6(handle->file, header, sizeof(uint32_t) * 4);
   /* Compatibility with old implementation that
    * used incorrect documentation. */
   if (FUNC10(header[MAGIC_INDEX]) != BSV_MAGIC
         && FUNC9(header[MAGIC_INDEX]) != BSV_MAGIC)
   {
      FUNC0("%s\n", FUNC8(MSG_MOVIE_FILE_IS_NOT_A_VALID_BSV1_FILE));
      return false;
   }

   content_crc               = FUNC2();

   if (content_crc != 0)
      if (FUNC9(header[CRC_INDEX]) != content_crc)
         FUNC1("%s.\n", FUNC8(MSG_CRC32_CHECKSUM_MISMATCH));

   state_size = FUNC9(header[STATE_SIZE_INDEX]);

#if 0
   RARCH_ERR("----- debug %u -----\n", header[0]);
   RARCH_ERR("----- debug %u -----\n", header[1]);
   RARCH_ERR("----- debug %u -----\n", header[2]);
   RARCH_ERR("----- debug %u -----\n", header[3]);
#endif

   if (state_size)
   {
      retro_ctx_size_info_t info;
      retro_ctx_serialize_info_t serial_info;
      uint8_t *buf       = (uint8_t*)FUNC7(state_size);

      if (!buf)
         return false;

      handle->state      = buf;
      handle->state_size = state_size;
      if (FUNC6(handle->file,
               handle->state, state_size) != state_size)
      {
         FUNC0("%s\n", FUNC8(MSG_COULD_NOT_READ_STATE_FROM_MOVIE));
         return false;
      }

      FUNC3( &info);

      if (info.size == state_size)
      {
         serial_info.data_const = handle->state;
         serial_info.size       = state_size;
         FUNC4(&serial_info);
      }
      else
         FUNC1("%s\n",
               FUNC8(MSG_MOVIE_FORMAT_DIFFERENT_SERIALIZER_VERSION));
   }

   handle->min_file_pos = sizeof(header) + state_size;

   return true;
}