
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* linesize; int ** data; } ;
typedef TYPE_1__ AVFrame ;


 int memcpy (int *,char*,int) ;

__attribute__((used)) static void drawline(AVFrame *pic, int x, int y, int len, int step)
{
    int i;
    uint8_t *p = pic->data[0] + y*pic->linesize[0] + x*3;

    for (i = 0; i < len; i++) {
        memcpy(p, "\x00\xff\x00", 3);
        p += step;
    }
}
