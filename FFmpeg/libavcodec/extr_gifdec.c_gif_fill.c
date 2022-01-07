
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* linesize; int height; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static void gif_fill(AVFrame *picture, uint32_t color)
{
    uint32_t *p = (uint32_t *)picture->data[0];
    uint32_t *p_end = p + (picture->linesize[0] / sizeof(uint32_t)) * picture->height;

    for (; p < p_end; p++)
        *p = color;
}
