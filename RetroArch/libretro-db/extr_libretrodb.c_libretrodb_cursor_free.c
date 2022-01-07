
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretrodb_cursor_t ;


 int free (int *) ;

void libretrodb_cursor_free(libretrodb_cursor_t *dbc)
{
   if (!dbc)
      return;

   free(dbc);
}
