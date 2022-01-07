
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* orig_path; int fp; int fh; } ;
typedef TYPE_1__ libretro_vfs_implementation_file ;


 int CloseHandle (int ) ;
 scalar_t__ fclose (int ) ;
 int fflush (int ) ;
 int printf (char*,char*) ;
 int stdout ;

int retro_vfs_file_close_cdrom(libretro_vfs_implementation_file *stream)
{
   if (!stream->fp || fclose(stream->fp))
      return -1;


   return 0;
}
