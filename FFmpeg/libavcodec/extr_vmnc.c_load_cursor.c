
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int bpp2; int cur_h; int cur_w; int bigendian; int gb; int * curmask; int * curbits; } ;
typedef TYPE_1__ VmncContext ;


 int vmnc_get_pixel (int *,int const,int ) ;

__attribute__((used)) static void load_cursor(VmncContext *c)
{
    int i, j, p;
    const int bpp = c->bpp2;
    uint8_t *dst8 = c->curbits;
    uint16_t *dst16 = (uint16_t *)c->curbits;
    uint32_t *dst32 = (uint32_t *)c->curbits;

    for (j = 0; j < c->cur_h; j++) {
        for (i = 0; i < c->cur_w; i++) {
            p = vmnc_get_pixel(&c->gb, bpp, c->bigendian);
            if (bpp == 1)
                *dst8++ = p;
            if (bpp == 2)
                *dst16++ = p;
            if (bpp == 4)
                *dst32++ = p;
        }
    }
    dst8 = c->curmask;
    dst16 = (uint16_t*)c->curmask;
    dst32 = (uint32_t*)c->curmask;
    for (j = 0; j < c->cur_h; j++) {
        for (i = 0; i < c->cur_w; i++) {
            p = vmnc_get_pixel(&c->gb, bpp, c->bigendian);
            if (bpp == 1)
                *dst8++ = p;
            if (bpp == 2)
                *dst16++ = p;
            if (bpp == 4)
                *dst32++ = p;
        }
    }
}
