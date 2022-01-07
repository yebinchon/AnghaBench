
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void copy_chroma(AVFrame *dst, AVFrame *src, int width, int height)
{
    int i, j;

    for (j = 1; j < 3; j++) {
        for (i = 0; i < height / 2; i++)
            memcpy(dst->data[j] + i * dst->linesize[j],
                   src->data[j] + i * src->linesize[j], width / 2);
    }
}
