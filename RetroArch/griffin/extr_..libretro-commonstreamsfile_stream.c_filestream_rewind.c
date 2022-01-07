
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error_flag; int eof_flag; } ;
typedef TYPE_1__ RFILE ;


 int RETRO_VFS_SEEK_POSITION_START ;
 int filestream_seek (TYPE_1__*,long,int ) ;

void filestream_rewind(RFILE *stream)
{
   if (!stream)
      return;
   filestream_seek(stream, 0L, RETRO_VFS_SEEK_POSITION_START);
   stream->error_flag = 0;
   stream->eof_flag = 0;
}
