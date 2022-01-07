
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int width; int* linesize; int ** data; } ;
struct TYPE_6__ {int b; int g; int r; } ;
struct TYPE_7__ {TYPE_1__ rgb; } ;
typedef TYPE_2__ ColorFloat ;
typedef TYPE_3__ AVFrame ;


 void* lrintf (int ) ;

__attribute__((used)) static void update_sono_rgb(AVFrame *sono, const ColorFloat *c, int idx)
{
    int x, w = sono->width;
    uint8_t *lp = sono->data[0] + idx * sono->linesize[0];

    for (x = 0; x < w; x++) {
        *lp++ = lrintf(c[x].rgb.r);
        *lp++ = lrintf(c[x].rgb.g);
        *lp++ = lrintf(c[x].rgb.b);
    }
}
