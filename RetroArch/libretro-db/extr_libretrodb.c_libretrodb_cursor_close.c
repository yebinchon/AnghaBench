
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eof; int * query; int * db; int * fd; scalar_t__ is_valid; } ;
typedef TYPE_1__ libretrodb_cursor_t ;


 int filestream_close (int *) ;
 int libretrodb_query_free (int *) ;

void libretrodb_cursor_close(libretrodb_cursor_t *cursor)
{
   if (!cursor)
      return;

   if (cursor->fd)
      filestream_close(cursor->fd);

   if (cursor->query)
      libretrodb_query_free(cursor->query);

   cursor->is_valid = 0;
   cursor->eof = 1;
   cursor->fd = ((void*)0);
   cursor->db = ((void*)0);
   cursor->query = ((void*)0);
}
