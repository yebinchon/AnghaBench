
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ stbi_uc ;
typedef int stbi__int32 ;
struct TYPE_5__ {scalar_t__* out; int w; int h; scalar_t__* background; scalar_t__* history; int eflags; int line_size; int start_x; int start_y; int max_x; int max_y; int cur_x; int cur_y; int lflags; int step; int parse; int transparent; scalar_t__* color_table; int flags; int** pal; size_t bgindex; int delay; scalar_t__ lpal; } ;
typedef TYPE_1__ stbi__gif ;
typedef int stbi__context ;


 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__*,int,int) ;
 scalar_t__* stbi__errpuc (char*,char*) ;
 int stbi__get16le (int *) ;
 void* stbi__get8 (int *) ;
 int stbi__gif_header (int *,TYPE_1__*,int*,int ) ;
 int stbi__gif_parse_colortable (int *,scalar_t__,int,int) ;
 scalar_t__ stbi__malloc (int) ;
 scalar_t__* stbi__process_gif_raster (int *,TYPE_1__*) ;
 int stbi__skip (int *,int) ;

__attribute__((used)) static stbi_uc *stbi__gif_load_next(stbi__context *s, stbi__gif *g, int *comp, int req_comp, stbi_uc *two_back)
{
   int dispose;
   int first_frame;
   int pi;
   int pcount;


   first_frame = 0;
   if (g->out == 0) {
      if (!stbi__gif_header(s, g, comp,0)) return 0;
      g->out = (stbi_uc *) stbi__malloc(4 * g->w * g->h);
      g->background = (stbi_uc *) stbi__malloc(4 * g->w * g->h);
      g->history = (stbi_uc *) stbi__malloc(g->w * g->h);
      if (g->out == 0) return stbi__errpuc("outofmem", "Out of memory");




      memset( g->out, 0x00, 4 * g->w * g->h );
      memset( g->background, 0x00, 4 * g->w * g->h );
      memset( g->history, 0x00, g->w * g->h );
      first_frame = 1;
   } else {

      dispose = (g->eflags & 0x1C) >> 2;
      pcount = g->w * g->h;

      if ((dispose == 3) && (two_back == 0)) {
         dispose = 2;
      }

      if (dispose == 3) {
         for (pi = 0; pi < pcount; ++pi) {
            if (g->history[pi]) {
               memcpy( &g->out[pi * 4], &two_back[pi * 4], 4 );
            }
         }
      } else if (dispose == 2) {

         for (pi = 0; pi < pcount; ++pi) {
            if (g->history[pi]) {
               memcpy( &g->out[pi * 4], &g->background[pi * 4], 4 );
            }
         }
      } else {




      }


      memcpy( g->background, g->out, 4 * g->w * g->h );
   }


   memset( g->history, 0x00, g->w * g->h );

   for (;;) {
      int tag = stbi__get8(s);
      switch (tag) {
         case 0x2C:
         {
            stbi__int32 x, y, w, h;
            stbi_uc *o;

            x = stbi__get16le(s);
            y = stbi__get16le(s);
            w = stbi__get16le(s);
            h = stbi__get16le(s);
            if (((x + w) > (g->w)) || ((y + h) > (g->h)))
               return stbi__errpuc("bad Image Descriptor", "Corrupt GIF");

            g->line_size = g->w * 4;
            g->start_x = x * 4;
            g->start_y = y * g->line_size;
            g->max_x = g->start_x + w * 4;
            g->max_y = g->start_y + h * g->line_size;
            g->cur_x = g->start_x;
            g->cur_y = g->start_y;

            g->lflags = stbi__get8(s);

            if (g->lflags & 0x40) {
               g->step = 8 * g->line_size;
               g->parse = 3;
            } else {
               g->step = g->line_size;
               g->parse = 0;
            }

            if (g->lflags & 0x80) {
               stbi__gif_parse_colortable(s,g->lpal, 2 << (g->lflags & 7), g->eflags & 0x01 ? g->transparent : -1);
               g->color_table = (stbi_uc *) g->lpal;
            } else if (g->flags & 0x80) {
               g->color_table = (stbi_uc *) g->pal;
            } else
               return stbi__errpuc("missing color table", "Corrupt GIF");

            o = stbi__process_gif_raster(s, g);
            if (o == ((void*)0)) return ((void*)0);


            pcount = g->w * g->h;
            if (first_frame && (g->bgindex > 0)) {

               for (pi = 0; pi < pcount; ++pi) {
                  if (g->history[pi] == 0) {
                     g->pal[g->bgindex][3] = 255;
                     memcpy( &g->out[pi * 4], &g->pal[g->bgindex], 4 );
                  }
               }
            }

            return o;
         }

         case 0x21:
         {
            int len;
            int ext = stbi__get8(s);
            if (ext == 0xF9) {
               len = stbi__get8(s);
               if (len == 4) {
                  g->eflags = stbi__get8(s);
                  g->delay = 10 * stbi__get16le(s);


                  if (g->transparent >= 0) {
                     g->pal[g->transparent][3] = 255;
                  }
                  if (g->eflags & 0x01) {
                     g->transparent = stbi__get8(s);
                     if (g->transparent >= 0) {
                        g->pal[g->transparent][3] = 0;
                     }
                  } else {

                     stbi__skip(s, 1);
                     g->transparent = -1;
                  }
               } else {
                  stbi__skip(s, len);
                  break;
               }
            }
            while ((len = stbi__get8(s)) != 0) {
               stbi__skip(s, len);
            }
            break;
         }

         case 0x3B:
            return (stbi_uc *) s;

         default:
            return stbi__errpuc("unknown code", "Corrupt GIF");
      }
   }
}
