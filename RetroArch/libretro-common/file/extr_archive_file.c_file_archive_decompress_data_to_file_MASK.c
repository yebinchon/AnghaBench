#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ real_checksum; int /*<<< orphan*/  stream; TYPE_2__* backend; scalar_t__ data; } ;
typedef  TYPE_1__ file_archive_file_handle_t ;
struct TYPE_5__ {scalar_t__ (* stream_crc_calculate ) (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ;int /*<<< orphan*/  (* stream_free ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int) ; 
 TYPE_2__ sevenzip_backend ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
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

#if 0
   handle->real_checksum = handle->backend->stream_crc_calculate(
         0, handle->data, size);
   if (handle->real_checksum != checksum)
   {
      /* File CRC difers from archive CRC. */
      printf("File CRC differs from archive CRC. File: 0x%x, Archive: 0x%x.\n",
            (unsigned)handle->real_checksum, (unsigned)checksum);
   }
#endif

   if (!FUNC0(path, handle->data, size))
   {
      ret = false;
      goto end;
   }

end:

   if (handle)
   {
      if (handle->backend)
      {
         if (handle->backend->stream_free)
         {
#ifdef HAVE_7ZIP
            if (handle->backend != &sevenzip_backend)
            {
               handle->backend->stream_free(handle->stream);

               if (handle->data)
                  free(handle->data);
            }
#else
            handle->backend->stream_free(handle->stream);
#endif
         }
      }
   }

   return ret;
}