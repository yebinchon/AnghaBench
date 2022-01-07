
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretrodb_t ;
typedef int libretrodb_query_t ;
typedef int libretrodb_cursor_t ;


 int libretrodb_close (int *) ;
 scalar_t__ libretrodb_cursor_open (int *,int *,int *) ;
 scalar_t__ libretrodb_open (char const*,int *) ;
 scalar_t__ libretrodb_query_compile (int *,char const*,int ,char const**) ;
 int libretrodb_query_free (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static int database_cursor_open(libretrodb_t *db,
      libretrodb_cursor_t *cur, const char *path, const char *query)
{
   const char *error = ((void*)0);
   libretrodb_query_t *q = ((void*)0);

   if ((libretrodb_open(path, db)) != 0)
      return -1;

   if (query)
      q = (libretrodb_query_t*)libretrodb_query_compile(db, query,
      strlen(query), &error);

   if (error)
      goto error;
   if ((libretrodb_cursor_open(db, cur, q)) != 0)
      goto error;

   if (q)
      libretrodb_query_free(q);

   return 0;

error:
   if (q)
      libretrodb_query_free(q);
   libretrodb_close(db);

   return -1;
}
