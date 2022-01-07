
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void stbi_uc ;
struct TYPE_4__ {int w; int h; int delay; int background; int history; int out; } ;
typedef TYPE_1__ stbi__gif ;
typedef int stbi__context ;
typedef int g ;


 int STBI_FREE (int ) ;
 scalar_t__ STBI_REALLOC (int*,int) ;
 int memcpy (void*,void*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 void* stbi__convert_format (void*,int,int,int,int) ;
 void* stbi__errpuc (char*,char*) ;
 void* stbi__gif_load_next (int *,TYPE_1__*,int*,int,void*) ;
 scalar_t__ stbi__gif_test (int *) ;
 scalar_t__ stbi__malloc (int) ;

__attribute__((used)) static void *stbi__load_gif_main(stbi__context *s, int **delays, int *x, int *y, int *z, int *comp, int req_comp)
{
   if (stbi__gif_test(s)) {
      int layers = 0;
      stbi_uc *u = 0;
      stbi_uc *out = 0;
      stbi_uc *two_back = 0;
      stbi__gif g;
      int stride;
      memset(&g, 0, sizeof(g));
      if (delays) {
         *delays = 0;
      }

      do {
         u = stbi__gif_load_next(s, &g, comp, req_comp, two_back);
         if (u == (stbi_uc *) s) u = 0;

         if (u) {
            *x = g.w;
            *y = g.h;
            ++layers;
            stride = g.w * g.h * 4;

            if (out) {
               out = (stbi_uc*) STBI_REALLOC( out, layers * stride );
               if (delays) {
                  *delays = (int*) STBI_REALLOC( *delays, sizeof(int) * layers );
               }
            } else {
               out = (stbi_uc*)stbi__malloc( layers * stride );
               if (delays) {
                  *delays = (int*) stbi__malloc( layers * sizeof(int) );
               }
            }
            memcpy( out + ((layers - 1) * stride), u, stride );
            if (layers >= 2) {
               two_back = out - 2 * stride;
            }

            if (delays) {
               (*delays)[layers - 1U] = g.delay;
            }
         }
      } while (u != 0);


      STBI_FREE(g.out);
      STBI_FREE(g.history);
      STBI_FREE(g.background);


      if (req_comp && req_comp != 4)
         out = stbi__convert_format(out, 4, req_comp, layers * g.w, g.h);

      *z = layers;
      return out;
   } else {
      return stbi__errpuc("not GIF", "Image was not as a gif type.");
   }
}
