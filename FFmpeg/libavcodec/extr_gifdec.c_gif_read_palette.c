
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int gb; } ;
typedef TYPE_1__ GifState ;


 int bytestream2_get_be24u (int *) ;

__attribute__((used)) static void gif_read_palette(GifState *s, uint32_t *pal, int nb)
{
    int i;

    for (i = 0; i < nb; i++, pal++)
        *pal = (0xffu << 24) | bytestream2_get_be24u(&s->gb);
}
