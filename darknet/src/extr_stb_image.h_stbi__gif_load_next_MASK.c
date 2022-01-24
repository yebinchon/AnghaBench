#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ stbi_uc ;
typedef  int stbi__int32 ;
struct TYPE_5__ {scalar_t__* out; int w; int h; scalar_t__* background; scalar_t__* history; int eflags; int line_size; int start_x; int start_y; int max_x; int max_y; int cur_x; int cur_y; int lflags; int step; int parse; int transparent; scalar_t__* color_table; int flags; int** pal; size_t bgindex; int delay; scalar_t__ lpal; } ;
typedef  TYPE_1__ stbi__gif ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int) ; 
 scalar_t__* FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__* FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static stbi_uc *FUNC10(stbi__context *s, stbi__gif *g, int *comp, int req_comp, stbi_uc *two_back)
{
   int dispose; 
   int first_frame; 
   int pi; 
   int pcount; 

   // on first frame, any non-written pixels get the background colour (non-transparent)
   first_frame = 0; 
   if (g->out == 0) {
      if (!FUNC5(s, g, comp,0))     return 0; // stbi__g_failure_reason set by stbi__gif_header
      g->out = (stbi_uc *) FUNC7(4 * g->w * g->h);
      g->background = (stbi_uc *) FUNC7(4 * g->w * g->h); 
      g->history = (stbi_uc *) FUNC7(g->w * g->h); 
      if (g->out == 0)                      return FUNC2("outofmem", "Out of memory");

      // image is treated as "tranparent" at the start - ie, nothing overwrites the current background; 
      // background colour is only used for pixels that are not rendered first frame, after that "background"
      // color refers to teh color that was there the previous frame. 
      FUNC1( g->out, 0x00, 4 * g->w * g->h ); 
      FUNC1( g->background, 0x00, 4 * g->w * g->h ); // state of the background (starts transparent)
      FUNC1( g->history, 0x00, g->w * g->h );        // pixels that were affected previous frame
      first_frame = 1; 
   } else {
      // second frame - how do we dispoase of the previous one?
      dispose = (g->eflags & 0x1C) >> 2; 
      pcount = g->w * g->h; 

      if ((dispose == 3) && (two_back == 0)) {
         dispose = 2; // if I don't have an image to revert back to, default to the old background
      }

      if (dispose == 3) { // use previous graphic
         for (pi = 0; pi < pcount; ++pi) {
            if (g->history[pi]) {
               FUNC0( &g->out[pi * 4], &two_back[pi * 4], 4 ); 
            }
         }
      } else if (dispose == 2) { 
         // restore what was changed last frame to background before that frame; 
         for (pi = 0; pi < pcount; ++pi) {
            if (g->history[pi]) {
               FUNC0( &g->out[pi * 4], &g->background[pi * 4], 4 ); 
            }
         }
      } else {
         // This is a non-disposal case eithe way, so just 
         // leave the pixels as is, and they will become the new background
         // 1: do not dispose
         // 0:  not specified.
      }

      // background is what out is after the undoing of the previou frame; 
      FUNC0( g->background, g->out, 4 * g->w * g->h ); 
   }

   // clear my history; 
   FUNC1( g->history, 0x00, g->w * g->h );        // pixels that were affected previous frame

   for (;;) {
      int tag = FUNC4(s); 
      switch (tag) {
         case 0x2C: /* Image Descriptor */
         {
            stbi__int32 x, y, w, h;
            stbi_uc *o;

            x = FUNC3(s);
            y = FUNC3(s);
            w = FUNC3(s);
            h = FUNC3(s);
            if (((x + w) > (g->w)) || ((y + h) > (g->h)))
               return FUNC2("bad Image Descriptor", "Corrupt GIF");

            g->line_size = g->w * 4;
            g->start_x = x * 4;
            g->start_y = y * g->line_size;
            g->max_x   = g->start_x + w * 4;
            g->max_y   = g->start_y + h * g->line_size;
            g->cur_x   = g->start_x;
            g->cur_y   = g->start_y;

            g->lflags = FUNC4(s);

            if (g->lflags & 0x40) {
               g->step = 8 * g->line_size; // first interlaced spacing
               g->parse = 3;
            } else {
               g->step = g->line_size;
               g->parse = 0;
            }

            if (g->lflags & 0x80) {
               FUNC6(s,g->lpal, 2 << (g->lflags & 7), g->eflags & 0x01 ? g->transparent : -1);
               g->color_table = (stbi_uc *) g->lpal;
            } else if (g->flags & 0x80) {
               g->color_table = (stbi_uc *) g->pal;
            } else
               return FUNC2("missing color table", "Corrupt GIF");            
            
            o = FUNC8(s, g);
            if (o == NULL) return NULL;

            // if this was the first frame, 
            pcount = g->w * g->h; 
            if (first_frame && (g->bgindex > 0)) {
               // if first frame, any pixel not drawn to gets the background color
               for (pi = 0; pi < pcount; ++pi) {
                  if (g->history[pi] == 0) {
                     g->pal[g->bgindex][3] = 255; // just in case it was made transparent, undo that; It will be reset next frame if need be; 
                     FUNC0( &g->out[pi * 4], &g->pal[g->bgindex], 4 ); 
                  }
               }
            }

            return o;
         }

         case 0x21: // Comment Extension.
         {
            int len;
            int ext = FUNC4(s); 
            if (ext == 0xF9) { // Graphic Control Extension.
               len = FUNC4(s);
               if (len == 4) {
                  g->eflags = FUNC4(s);
                  g->delay = 10 * FUNC3(s); // delay - 1/100th of a second, saving as 1/1000ths.

                  // unset old transparent
                  if (g->transparent >= 0) {
                     g->pal[g->transparent][3] = 255; 
                  } 
                  if (g->eflags & 0x01) {
                     g->transparent = FUNC4(s);
                     if (g->transparent >= 0) {
                        g->pal[g->transparent][3] = 0; 
                     }
                  } else {
                     // don't need transparent
                     FUNC9(s, 1); 
                     g->transparent = -1; 
                  }
               } else {
                  FUNC9(s, len);
                  break;
               }
            } 
            while ((len = FUNC4(s)) != 0) {
               FUNC9(s, len);
            }
            break;
         }

         case 0x3B: // gif stream termination code
            return (stbi_uc *) s; // using '1' causes warning on some compilers

         default:
            return FUNC2("unknown code", "Corrupt GIF");
      }
   }
}