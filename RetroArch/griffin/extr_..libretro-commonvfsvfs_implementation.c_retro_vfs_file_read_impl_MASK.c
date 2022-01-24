#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int hints; scalar_t__ scheme; size_t mappos; size_t mapsize; int /*<<< orphan*/  fd; int /*<<< orphan*/ * mapped; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ libretro_vfs_implementation_file ;
typedef  int int64_t ;

/* Variables and functions */
 int RETRO_VFS_FILE_ACCESS_HINT_FREQUENT_ACCESS ; 
 int RFILE_HINT_UNBUFFERED ; 
 scalar_t__ VFS_SCHEME_CDROM ; 
 int FUNC0 (void*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC4 (TYPE_1__*,void*,scalar_t__) ; 

int64_t FUNC5(libretro_vfs_implementation_file *stream,
      void *s, uint64_t len)
{
   if (!stream || !s)
      return -1;

   if ((stream->hints & RFILE_HINT_UNBUFFERED) == 0)
   {
#ifdef HAVE_CDROM
      if (stream->scheme == VFS_SCHEME_CDROM)
         return retro_vfs_file_read_cdrom(stream, s, len);
#endif
#ifdef ORBIS
      if (orbisRead(stream->fd, s, (size_t)len) < 0)
         return -1;
      return 0;
#else
      return FUNC0(s, 1, (size_t)len, stream->fp);
#endif
   }
#ifdef HAVE_MMAP
   if (stream->hints & RETRO_VFS_FILE_ACCESS_HINT_FREQUENT_ACCESS)
   {
      if (stream->mappos > stream->mapsize)
         return -1;

      if (stream->mappos + len > stream->mapsize)
         len = stream->mapsize - stream->mappos;

      memcpy(s, &stream->mapped[stream->mappos], len);
      stream->mappos += len;

      return len;
   }
#endif

   return FUNC3(stream->fd, s, (size_t)len);
}