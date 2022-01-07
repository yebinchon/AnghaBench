
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * linesize; int ** data; } ;
typedef TYPE_1__ AVFrame ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static int targa_encode_normal(uint8_t *outbuf, const AVFrame *pic, int bpp, int w, int h)
{
    int i, n = bpp * w;
    uint8_t *out = outbuf;
    uint8_t *ptr = pic->data[0];

    for(i=0; i < h; i++) {
        memcpy(out, ptr, n);
        out += n;
        ptr += pic->linesize[0];
    }

    return out - outbuf;
}
