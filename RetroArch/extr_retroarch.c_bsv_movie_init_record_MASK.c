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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef  TYPE_1__ retro_ctx_size_info_t ;
struct TYPE_8__ {int* data; int size; } ;
typedef  TYPE_2__ retro_ctx_serialize_info_t ;
typedef  int /*<<< orphan*/  intfstream_t ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_9__ {int min_file_pos; int state_size; int* state; int /*<<< orphan*/ * file; } ;
typedef  TYPE_3__ bsv_movie_t ;

/* Variables and functions */
 int /*<<< orphan*/  BSV_MAGIC ; 
 size_t CRC_INDEX ; 
 size_t MAGIC_INDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_WRITE ; 
 size_t STATE_SIZE_INDEX ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(
      bsv_movie_t *handle, const char *path)
{
   retro_ctx_size_info_t info;
   uint32_t state_size       = 0;
   uint32_t content_crc      = 0;
   uint32_t header[4]        = {0};
   intfstream_t *file        = FUNC4(path,
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!file)
   {
      FUNC0("Could not open BSV file for recording, path : \"%s\".\n", path);
      return false;
   }

   handle->file             = file;

   content_crc              = FUNC1();

   /* This value is supposed to show up as
    * BSV1 in a HEX editor, big-endian. */
   header[MAGIC_INDEX]      = FUNC8(BSV_MAGIC);
   header[CRC_INDEX]        = FUNC7(content_crc);

   FUNC3(&info);

   state_size               = (unsigned)info.size;

   header[STATE_SIZE_INDEX] = FUNC7(state_size);
#if 0
   RARCH_ERR("----- debug %u -----\n", header[0]);
   RARCH_ERR("----- debug %u -----\n", header[1]);
   RARCH_ERR("----- debug %u -----\n", header[2]);
   RARCH_ERR("----- debug %u -----\n", header[3]);
#endif

   FUNC5(handle->file, header, 4 * sizeof(uint32_t));

   handle->min_file_pos     = sizeof(header) + state_size;
   handle->state_size       = state_size;

   if (state_size)
   {
      retro_ctx_serialize_info_t serial_info;

      handle->state = (uint8_t*)FUNC6(state_size);
      if (!handle->state)
         return false;

      serial_info.data = handle->state;
      serial_info.size = state_size;

      FUNC2(&serial_info);

      FUNC5(handle->file,
            handle->state, state_size);
   }

   return true;
}