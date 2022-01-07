
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretrodb_t ;
typedef int libretrodb_cursor_t ;


 int libretrodb_close (int *) ;
 int libretrodb_cursor_close (int *) ;

__attribute__((used)) static int database_cursor_close(libretrodb_t *db, libretrodb_cursor_t *cur)
{
   libretrodb_cursor_close(cur);
   libretrodb_close(db);

   return 0;
}
