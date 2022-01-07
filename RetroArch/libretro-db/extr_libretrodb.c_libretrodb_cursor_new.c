
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretrodb_cursor_t ;


 scalar_t__ calloc (int,int) ;

libretrodb_cursor_t *libretrodb_cursor_new(void)
{
   libretrodb_cursor_t *dbc = (libretrodb_cursor_t*)
      calloc(1, sizeof(*dbc));

   if (!dbc)
      return ((void*)0);

   return dbc;
}
