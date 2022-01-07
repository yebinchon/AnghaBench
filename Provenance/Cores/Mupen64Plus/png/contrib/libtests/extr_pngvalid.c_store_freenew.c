
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chunkpos; int chunklen; scalar_t__ npalette; int * palette; scalar_t__ IDAT_bits; scalar_t__ IDAT_size; scalar_t__ chunktype; scalar_t__ writepos; int new; } ;
typedef TYPE_1__ png_store ;


 int free (int *) ;
 int store_freebuffer (int *) ;

__attribute__((used)) static void
store_freenew(png_store *ps)
{
   store_freebuffer(&ps->new);
   ps->writepos = 0;
   ps->chunkpos = 8;
   ps->chunktype = 0;
   ps->chunklen = 16;
   ps->IDAT_size = 0;
   ps->IDAT_bits = 0;
   if (ps->palette != ((void*)0))
   {
      free(ps->palette);
      ps->palette = ((void*)0);
      ps->npalette = 0;
   }
}
