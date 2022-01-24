#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* cue_buf; } ;
struct TYPE_7__ {scalar_t__ scheme; int hints; int fd; struct TYPE_7__* orig_path; struct TYPE_7__* buf; TYPE_1__ cdrom; int /*<<< orphan*/  mapsize; int /*<<< orphan*/  mapped; scalar_t__ fp; } ;
typedef  TYPE_2__ libretro_vfs_implementation_file ;

/* Variables and functions */
 int RETRO_VFS_FILE_ACCESS_HINT_FREQUENT_ACCESS ; 
 int RFILE_HINT_UNBUFFERED ; 
 scalar_t__ VFS_SCHEME_CDROM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int FUNC6(libretro_vfs_implementation_file *stream)
{
   if (!stream)
      return -1;

#ifdef HAVE_CDROM
   if (stream->scheme == VFS_SCHEME_CDROM)
   {
      retro_vfs_file_close_cdrom(stream);
      goto end;
   }
#endif

   if ((stream->hints & RFILE_HINT_UNBUFFERED) == 0)
   {
      if (stream->fp)
      {
         FUNC1(stream->fp);
      }
   }
   else
   {
#ifdef HAVE_MMAP
      if (stream->hints & RETRO_VFS_FILE_ACCESS_HINT_FREQUENT_ACCESS)
         munmap(stream->mapped, stream->mapsize);
#endif
   }

   if (stream->fd > 0)
   {
#ifdef ORBIS
      orbisClose(stream->fd);
      stream->fd = -1;
#else
      FUNC0(stream->fd);
#endif
   }
#ifdef HAVE_CDROM
end:
   if (stream->cdrom.cue_buf)
      free(stream->cdrom.cue_buf);
#endif
   if (stream->buf)
      FUNC2(stream->buf);

   if (stream->orig_path)
      FUNC2(stream->orig_path);

   FUNC2(stream);

   return 0;
}