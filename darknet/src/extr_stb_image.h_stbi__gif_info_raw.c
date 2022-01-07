
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int w; int h; } ;
typedef TYPE_1__ stbi__gif ;
typedef int stbi__context ;


 int STBI_FREE (TYPE_1__*) ;
 int stbi__gif_header (int *,TYPE_1__*,int*,int) ;
 scalar_t__ stbi__malloc (int) ;
 int stbi__rewind (int *) ;

__attribute__((used)) static int stbi__gif_info_raw(stbi__context *s, int *x, int *y, int *comp)
{
   stbi__gif* g = (stbi__gif*) stbi__malloc(sizeof(stbi__gif));
   if (!stbi__gif_header(s, g, comp, 1)) {
      STBI_FREE(g);
      stbi__rewind( s );
      return 0;
   }
   if (x) *x = g->w;
   if (y) *y = g->h;
   STBI_FREE(g);
   return 1;
}
