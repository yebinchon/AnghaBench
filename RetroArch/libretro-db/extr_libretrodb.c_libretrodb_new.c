
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretrodb_t ;


 scalar_t__ calloc (int,int) ;

libretrodb_t *libretrodb_new(void)
{
   libretrodb_t *db = (libretrodb_t*)calloc(1, sizeof(*db));

   if (!db)
      return ((void*)0);

   return db;
}
