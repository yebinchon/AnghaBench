
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libretrodb_t ;


 int free (int *) ;

void libretrodb_free(libretrodb_t *db)
{
   if (!db)
      return;

   free(db);
}
