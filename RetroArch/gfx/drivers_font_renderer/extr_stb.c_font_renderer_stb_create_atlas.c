
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct font_glyph {scalar_t__ height; scalar_t__ width; int draw_offset_y; int draw_offset_x; scalar_t__ atlas_offset_y; scalar_t__ atlas_offset_x; int advance_x; } ;
struct TYPE_11__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; int yoff; int xoff; int xadvance; } ;
typedef TYPE_2__ stbtt_packedchar ;
struct TYPE_12__ {int * member_0; } ;
typedef TYPE_3__ stbtt_pack_context ;
struct TYPE_10__ {unsigned int width; unsigned int height; int dirty; int * buffer; } ;
struct TYPE_13__ {TYPE_1__ atlas; struct font_glyph* glyphs; } ;
typedef TYPE_4__ stb_font_renderer_t ;


 int MIN (int,int) ;
 int RARCH_WARN (char*,unsigned int,unsigned int) ;
 scalar_t__ calloc (unsigned int,unsigned int) ;
 int free (int *) ;
 scalar_t__ isalnum (int) ;
 int stbtt_PackBegin (TYPE_3__*,int *,unsigned int,unsigned int,unsigned int,int,int *) ;
 int stbtt_PackEnd (TYPE_3__*) ;
 int stbtt_PackFontRange (TYPE_3__*,int *,int ,float,int ,int,TYPE_2__*) ;

__attribute__((used)) static bool font_renderer_stb_create_atlas(stb_font_renderer_t *self,
      uint8_t *font_data, float font_size, unsigned width, unsigned height)
{
   int i;
   stbtt_packedchar chardata[256];
   stbtt_pack_context pc = {((void*)0)};

   if (width > 2048 || height > 2048)
   {
      RARCH_WARN("[stb] Font atlas too big: %ux%u\n", width, height);
      goto error;
   }

   if (self->atlas.buffer)
      free(self->atlas.buffer);

   self->atlas.buffer = (uint8_t*)calloc(height, width);
   self->atlas.width = width;
   self->atlas.height = height;

   if (!self->atlas.buffer)
      goto error;

   stbtt_PackBegin(&pc, self->atlas.buffer,
         self->atlas.width, self->atlas.height,
         self->atlas.width, 1, ((void*)0));

   stbtt_PackFontRange(&pc, font_data, 0, font_size, 0, 256, chardata);
   stbtt_PackEnd(&pc);

   self->atlas.dirty = 1;

   for (i = 0; i < 256; ++i)
   {
      struct font_glyph *g = &self->glyphs[i];
      stbtt_packedchar *c = &chardata[i];

      g->advance_x = c->xadvance;
      g->atlas_offset_x = c->x0;
      g->atlas_offset_y = c->y0;
      g->draw_offset_x = c->xoff;
      g->draw_offset_y = c->yoff;
      g->width = c->x1 - c->x0;
      g->height = c->y1 - c->y0;


      if (isalnum(i) && (!g->width || !g->height))
      {
         int new_width = width * 1.2;
         int new_height = height * 1.2;


         if (width < 2048 || height < 2048)
         {
            new_width = MIN(new_width, 2048);
            new_height = MIN(new_height, 2048);
         }

         return font_renderer_stb_create_atlas(self, font_data, font_size,
               new_width, new_height);
      }
   }

   return 1;

error:
   self->atlas.width = self->atlas.height = 0;

   if (self->atlas.buffer)
      free(self->atlas.buffer);

   self->atlas.buffer = ((void*)0);

   return 0;
}
