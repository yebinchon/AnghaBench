
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int store_palette_entry ;
struct TYPE_6__ {TYPE_1__* current; int pread; } ;
typedef TYPE_2__ png_store ;
struct TYPE_5__ {int npalette; int * palette; } ;


 int store_log (TYPE_2__*,int ,char*,int) ;

__attribute__((used)) static store_palette_entry *
store_current_palette(png_store *ps, int *npalette)
{



   if (ps->current == ((void*)0))
   {
      store_log(ps, ps->pread, "no current stream for palette", 1);
      return ((void*)0);
   }


   *npalette = ps->current->npalette;
   return ps->current->palette;
}
