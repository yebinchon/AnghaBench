
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ fmt; int width; int height; int bpp; int cur; int pal; int * decomp_buf; } ;
typedef TYPE_1__ ZmbvContext ;


 scalar_t__ ZMBV_FMT_8BPP ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int zmbv_decode_intra(ZmbvContext *c)
{
    uint8_t *src = c->decomp_buf;


    if (c->fmt == ZMBV_FMT_8BPP) {
        memcpy(c->pal, src, 768);
        src += 768;
    }

    memcpy(c->cur, src, c->width * c->height * (c->bpp / 8));
    return 0;
}
