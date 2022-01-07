
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fd; int * path; } ;
typedef TYPE_1__ libretrodb_t ;


 int filestream_close (int *) ;
 int free (int *) ;
 int string_is_empty (int *) ;

void libretrodb_close(libretrodb_t *db)
{
   if (db->fd)
      filestream_close(db->fd);
   if (!string_is_empty(db->path))
      free(db->path);
   db->path = ((void*)0);
   db->fd = ((void*)0);
}
