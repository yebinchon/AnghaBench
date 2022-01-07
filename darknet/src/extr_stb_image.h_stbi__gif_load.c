
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void stbi_uc ;
typedef int stbi__result_info ;
struct TYPE_4__ {int w; int h; int background; int history; } ;
typedef TYPE_1__ stbi__gif ;
typedef int stbi__context ;
typedef int g ;


 int STBI_FREE (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 void* stbi__convert_format (void*,int,int,int,int) ;
 void* stbi__gif_load_next (int *,TYPE_1__*,int*,int,int ) ;

__attribute__((used)) static void *stbi__gif_load(stbi__context *s, int *x, int *y, int *comp, int req_comp, stbi__result_info *ri)
{
   stbi_uc *u = 0;
   stbi__gif g;
   memset(&g, 0, sizeof(g));

   u = stbi__gif_load_next(s, &g, comp, req_comp, 0);
   if (u == (stbi_uc *) s) u = 0;
   if (u) {
      *x = g.w;
      *y = g.h;



      if (req_comp && req_comp != 4)
         u = stbi__convert_format(u, 4, req_comp, g.w, g.h);
   }


   STBI_FREE(g.history);
   STBI_FREE(g.background);

   return u;
}
