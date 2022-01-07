
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ npalette; struct TYPE_4__* palette; scalar_t__ datacount; int data; struct TYPE_4__* next; } ;
typedef TYPE_1__ png_store_file ;


 int free (TYPE_1__*) ;
 int store_freebuffer (int *) ;

__attribute__((used)) static void
store_freefile(png_store_file **ppf)
{
   if (*ppf != ((void*)0))
   {
      store_freefile(&(*ppf)->next);

      store_freebuffer(&(*ppf)->data);
      (*ppf)->datacount = 0;
      if ((*ppf)->palette != ((void*)0))
      {
         free((*ppf)->palette);
         (*ppf)->palette = ((void*)0);
         (*ppf)->npalette = 0;
      }
      free(*ppf);
      *ppf = ((void*)0);
   }
}
