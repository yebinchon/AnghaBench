
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_6__ {int fd; scalar_t__ first_index_offset; } ;
typedef TYPE_1__ libretrodb_t ;
struct TYPE_7__ {scalar_t__ next; int name; } ;
typedef TYPE_2__ libretrodb_index_t ;


 int RETRO_VFS_SEEK_POSITION_CURRENT ;
 int RETRO_VFS_SEEK_POSITION_START ;
 scalar_t__ filestream_get_size (int ) ;
 scalar_t__ filestream_seek (int ,scalar_t__,int ) ;
 scalar_t__ filestream_tell (int ) ;
 int libretrodb_read_index_header (int ,TYPE_2__*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static int libretrodb_find_index(libretrodb_t *db, const char *index_name,
      libretrodb_index_t *idx)
{
   ssize_t eof = filestream_get_size(db->fd);
   ssize_t offset = filestream_seek(db->fd,
         (ssize_t)db->first_index_offset,
         RETRO_VFS_SEEK_POSITION_START);


   while (offset < eof)
   {
      libretrodb_read_index_header(db->fd, idx);

      if (strncmp(index_name, idx->name, strlen(idx->name)) == 0)
         return 0;

      filestream_seek(db->fd, (ssize_t)idx->next,
            RETRO_VFS_SEEK_POSITION_CURRENT);
      offset = filestream_tell(db->fd);
   }

   return -1;
}
