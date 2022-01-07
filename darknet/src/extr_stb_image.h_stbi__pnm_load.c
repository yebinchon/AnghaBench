
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void stbi_uc ;
typedef int stbi__result_info ;
struct TYPE_5__ {int img_x; int img_y; int img_n; } ;
typedef TYPE_1__ stbi__context ;


 int STBI_NOTUSED (int *) ;
 void* stbi__convert_format (void*,int,int,int,int) ;
 void* stbi__errpuc (char*,char*) ;
 int stbi__getn (TYPE_1__*,void*,int) ;
 int stbi__mad3sizes_valid (int,int,int,int ) ;
 scalar_t__ stbi__malloc_mad3 (int,int,int,int ) ;
 int stbi__pnm_info (TYPE_1__*,int*,int*,int*) ;

__attribute__((used)) static void *stbi__pnm_load(stbi__context *s, int *x, int *y, int *comp, int req_comp, stbi__result_info *ri)
{
   stbi_uc *out;
   STBI_NOTUSED(ri);

   if (!stbi__pnm_info(s, (int *)&s->img_x, (int *)&s->img_y, (int *)&s->img_n))
      return 0;

   *x = s->img_x;
   *y = s->img_y;
   if (comp) *comp = s->img_n;

   if (!stbi__mad3sizes_valid(s->img_n, s->img_x, s->img_y, 0))
      return stbi__errpuc("too large", "PNM too large");

   out = (stbi_uc *) stbi__malloc_mad3(s->img_n, s->img_x, s->img_y, 0);
   if (!out) return stbi__errpuc("outofmem", "Out of memory");
   stbi__getn(s, out, s->img_n * s->img_x * s->img_y);

   if (req_comp && req_comp != s->img_n) {
      out = stbi__convert_format(out, s->img_n, req_comp, s->img_x, s->img_y);
      if (out == ((void*)0)) return out;
   }
   return out;
}
