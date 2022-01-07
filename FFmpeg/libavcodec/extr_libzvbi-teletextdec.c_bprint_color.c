
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * color_map; } ;
typedef TYPE_1__ vbi_page ;
typedef int AVBPrint ;


 int VBI_B (int ) ;
 int VBI_G (int ) ;
 int VBI_R (int ) ;
 int av_bprintf (int *,char*,char const*,int,int,int) ;

__attribute__((used)) static void bprint_color(const char *type, AVBPrint *buf, vbi_page *page, unsigned ci)
{
    int r = VBI_R(page->color_map[ci]);
    int g = VBI_G(page->color_map[ci]);
    int b = VBI_B(page->color_map[ci]);
    av_bprintf(buf, "{\\%s&H%02X%02X%02X&}", type, b, g, r);
}
