
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EDGE_BOTTOM ;
 int EDGE_TOP ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void draw_edges_8_c(uint8_t *buf, int wrap, int width, int height,
                           int w, int h, int sides)
{
    uint8_t *ptr = buf, *last_line;
    int i;


    for (i = 0; i < height; i++) {
        memset(ptr - w, ptr[0], w);
        memset(ptr + width, ptr[width - 1], w);
        ptr += wrap;
    }


    buf -= w;
    last_line = buf + (height - 1) * wrap;
    if (sides & EDGE_TOP)
        for (i = 0; i < h; i++)

            memcpy(buf - (i + 1) * wrap, buf, width + w + w);
    if (sides & EDGE_BOTTOM)
        for (i = 0; i < h; i++)

            memcpy(last_line + (i + 1) * wrap, last_line, width + w + w);
}
