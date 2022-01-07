
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* linesize; int ** data; } ;
typedef TYPE_1__ AVFrame ;



__attribute__((used)) static void get_frame_mb(const AVFrame *frame, int x, int y, uint8_t mb[], int dim)
{
    int i, j, cp;

    for (cp=0; cp<3; cp++) {
        int stride = frame->linesize[cp];
        for (i=0; i<dim; i++)
            for (j=0; j<dim; j++)
                *mb++ = frame->data[cp][(y+i)*stride + x + j];
    }
}
