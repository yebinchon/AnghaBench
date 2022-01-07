
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int color; unsigned int* bitmap; int stride; } ;
typedef TYPE_1__ ASS_Image ;



__attribute__((used)) static uint8_t ssaAlpha( ASS_Image *frame, int x, int y )
{
    unsigned frameA = ( frame->color ) & 0xff;
    unsigned gliphA = frame->bitmap[y*frame->stride + x];



    unsigned alpha = (255 - frameA) * gliphA >> 8;

    return (uint8_t)alpha;
}
