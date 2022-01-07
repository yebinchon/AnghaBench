
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ encoding; } ;
typedef TYPE_1__ bdf_glyph_t ;



__attribute__((used)) static int
  by_encoding( const void* a,
               const void* b )
  {
    bdf_glyph_t *c1, *c2;


    c1 = (bdf_glyph_t *)a;
    c2 = (bdf_glyph_t *)b;

    if ( c1->encoding < c2->encoding )
      return -1;

    if ( c1->encoding > c2->encoding )
      return 1;

    return 0;
  }
