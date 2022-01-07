
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* cue_buf; } ;
struct TYPE_7__ {scalar_t__ scheme; int hints; int fd; struct TYPE_7__* orig_path; struct TYPE_7__* buf; TYPE_1__ cdrom; int mapsize; int mapped; scalar_t__ fp; } ;
typedef TYPE_2__ libretro_vfs_implementation_file ;


 int RETRO_VFS_FILE_ACCESS_HINT_FREQUENT_ACCESS ;
 int RFILE_HINT_UNBUFFERED ;
 scalar_t__ VFS_SCHEME_CDROM ;
 int close (int) ;
 int fclose (scalar_t__) ;
 int free (TYPE_2__*) ;
 int munmap (int ,int ) ;
 int orbisClose (int) ;
 int retro_vfs_file_close_cdrom (TYPE_2__*) ;

int retro_vfs_file_close_impl(libretro_vfs_implementation_file *stream)
{
   if (!stream)
      return -1;
   if ((stream->hints & RFILE_HINT_UNBUFFERED) == 0)
   {
      if (stream->fp)
      {
         fclose(stream->fp);
      }
   }
   else
   {




   }

   if (stream->fd > 0)
   {




      close(stream->fd);

   }





   if (stream->buf)
      free(stream->buf);

   if (stream->orig_path)
      free(stream->orig_path);

   free(stream);

   return 0;
}
