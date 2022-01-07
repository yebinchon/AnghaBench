
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 int ff_rle_encode (int *,int,scalar_t__,int,int,int,int ,int,int ) ;

__attribute__((used)) static int targa_encode_rle(uint8_t *outbuf, int out_size, const AVFrame *pic,
                            int bpp, int w, int h)
{
    int y,ret;
    uint8_t *out;

    out = outbuf;

    for(y = 0; y < h; y ++) {
        ret = ff_rle_encode(out, out_size, pic->data[0] + pic->linesize[0] * y, bpp, w, 0x7f, 0, -1, 0);
        if(ret == -1){
            return -1;
        }
        out+= ret;
        out_size -= ret;
    }

    return out - outbuf;
}
