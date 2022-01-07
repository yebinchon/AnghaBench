
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int format; TYPE_1__* dst; } ;
struct TYPE_6__ {int hi_pixel_mask; int lo_pixel_mask; int q_hi_pixel_mask; int q_lo_pixel_mask; int bpp; int is_be; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_2__ Super2xSaIContext ;
typedef TYPE_3__ AVFilterLink ;
__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    Super2xSaIContext *s = inlink->dst->priv;

    s->hi_pixel_mask = 0xFEFEFEFE;
    s->lo_pixel_mask = 0x01010101;
    s->q_hi_pixel_mask = 0xFCFCFCFC;
    s->q_lo_pixel_mask = 0x03030303;
    s->bpp = 4;

    switch (inlink->format) {
    case 132:
    case 137:
        s->bpp = 3;
        break;

    case 129:
    case 134:
        s->is_be = 1;
    case 128:
    case 133:
        s->hi_pixel_mask = 0xF7DEF7DE;
        s->lo_pixel_mask = 0x08210821;
        s->q_hi_pixel_mask = 0xE79CE79C;
        s->q_lo_pixel_mask = 0x18631863;
        s->bpp = 2;
        break;

    case 136:
    case 131:
        s->is_be = 1;
    case 135:
    case 130:
        s->hi_pixel_mask = 0x7BDE7BDE;
        s->lo_pixel_mask = 0x04210421;
        s->q_hi_pixel_mask = 0x739C739C;
        s->q_lo_pixel_mask = 0x0C630C63;
        s->bpp = 2;
        break;
    }

    return 0;
}
