
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;
typedef TYPE_1__ libretrodb_t ;
typedef int libretrodb_query_t ;
struct TYPE_7__ {int is_valid; int * query; TYPE_1__* db; int * fd; } ;
typedef TYPE_2__ libretrodb_cursor_t ;
typedef int RFILE ;


 int RETRO_VFS_FILE_ACCESS_HINT_NONE ;
 int RETRO_VFS_FILE_ACCESS_READ ;
 int errno ;
 int * filestream_open (int ,int ,int ) ;
 int libretrodb_cursor_reset (TYPE_2__*) ;
 int libretrodb_query_inc_ref (int *) ;
 scalar_t__ string_is_empty (int ) ;

int libretrodb_cursor_open(libretrodb_t *db, libretrodb_cursor_t *cursor,
      libretrodb_query_t *q)
{
   RFILE *fd = ((void*)0);
   if (!db || string_is_empty(db->path))
      return -errno;

   fd = filestream_open(db->path,
         RETRO_VFS_FILE_ACCESS_READ,
         RETRO_VFS_FILE_ACCESS_HINT_NONE);

   if (!fd)
      return -errno;

   cursor->fd = fd;
   cursor->db = db;
   cursor->is_valid = 1;
   libretrodb_cursor_reset(cursor);
   cursor->query = q;

   if (q)
      libretrodb_query_inc_ref(q);

   return 0;
}
