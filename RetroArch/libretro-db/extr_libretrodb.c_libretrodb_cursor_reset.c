
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
typedef int libretrodb_header_t ;
struct TYPE_5__ {TYPE_1__* db; int fd; scalar_t__ eof; } ;
typedef TYPE_2__ libretrodb_cursor_t ;
struct TYPE_4__ {scalar_t__ root; } ;


 int RETRO_VFS_SEEK_POSITION_START ;
 scalar_t__ filestream_seek (int ,int ,int ) ;

int libretrodb_cursor_reset(libretrodb_cursor_t *cursor)
{
   cursor->eof = 0;
   return (int)filestream_seek(cursor->fd,
         (ssize_t)(cursor->db->root + sizeof(libretrodb_header_t)),
         RETRO_VFS_SEEK_POSITION_START);
}
