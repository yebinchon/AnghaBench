
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint8 ;
typedef scalar_t__ gint ;
typedef int GdkPixbuf ;


 int horz_line (int *,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int vert_line (int *,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
hash_pixbuf(
    GdkPixbuf * pb,
    gint x,
    gint y,
    gint w,
    gint h,
    gint step,
    gint orientation)
{
    gint ii, jj;
    gint line_width = 8;
    struct
    {
        guint8 r;
        guint8 g;
        guint8 b;
    } c[4] =
    {{0x80, 0x80, 0x80},{0xC0, 0x80, 0x70},{0x80, 0xA0, 0x80},{0x70, 0x80, 0xA0}};

    if (!orientation)
    {

        for (ii = x, jj = 0; ii+line_width < x+w; ii += step, jj++)
        {
            vert_line(pb, c[jj&3].r, c[jj&3].g, c[jj&3].b, ii, y, h, line_width);
        }
    }
    else
    {

        for (ii = y, jj = 0; ii+line_width < y+h; ii += step, jj++)
        {
            horz_line(pb, c[jj&3].r, c[jj&3].g, c[jj&3].b, x, ii, w, line_width);
        }
    }
}
