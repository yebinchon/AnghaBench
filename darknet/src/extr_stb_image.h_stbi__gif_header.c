
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char stbi_uc ;
struct TYPE_3__ {char flags; char bgindex; char ratio; int transparent; int pal; void* h; void* w; } ;
typedef TYPE_1__ stbi__gif ;
typedef int stbi__context ;


 int stbi__err (char*,char*) ;
 char* stbi__g_failure_reason ;
 void* stbi__get16le (int *) ;
 char stbi__get8 (int *) ;
 int stbi__gif_parse_colortable (int *,int ,int,int) ;

__attribute__((used)) static int stbi__gif_header(stbi__context *s, stbi__gif *g, int *comp, int is_info)
{
   stbi_uc version;
   if (stbi__get8(s) != 'G' || stbi__get8(s) != 'I' || stbi__get8(s) != 'F' || stbi__get8(s) != '8')
      return stbi__err("not GIF", "Corrupt GIF");

   version = stbi__get8(s);
   if (version != '7' && version != '9') return stbi__err("not GIF", "Corrupt GIF");
   if (stbi__get8(s) != 'a') return stbi__err("not GIF", "Corrupt GIF");

   stbi__g_failure_reason = "";
   g->w = stbi__get16le(s);
   g->h = stbi__get16le(s);
   g->flags = stbi__get8(s);
   g->bgindex = stbi__get8(s);
   g->ratio = stbi__get8(s);
   g->transparent = -1;

   if (comp != 0) *comp = 4;

   if (is_info) return 1;

   if (g->flags & 0x80)
      stbi__gif_parse_colortable(s,g->pal, 2 << (g->flags & 7), -1);

   return 1;
}
