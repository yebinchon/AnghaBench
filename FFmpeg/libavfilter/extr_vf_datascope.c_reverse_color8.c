
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int* rgba; TYPE_1__* comp; } ;
struct TYPE_8__ {int nb_planes; } ;
struct TYPE_7__ {int* u8; } ;
typedef TYPE_2__ FFDrawContext ;
typedef TYPE_3__ FFDrawColor ;



__attribute__((used)) static void reverse_color8(FFDrawContext *draw, FFDrawColor *color, FFDrawColor *reverse)
{
    int p;

    reverse->rgba[3] = 255;
    for (p = 0; p < draw->nb_planes; p++) {
        reverse->comp[p].u8[0] = color->comp[p].u8[0] > 127 ? 0 : 255;
        reverse->comp[p].u8[1] = color->comp[p].u8[1] > 127 ? 0 : 255;
        reverse->comp[p].u8[2] = color->comp[p].u8[2] > 127 ? 0 : 255;
    }
}
