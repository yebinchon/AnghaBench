
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int width; int height; int flags; scalar_t__ len; unsigned int data_size; int data; } ;
struct TYPE_11__ {int * blockbuffer; } ;
typedef int Palette ;
typedef TYPE_1__ FlashSV2Context ;
typedef TYPE_2__ Block ;


 int COLORSPACE_15_7 ;
 int ZLIB_PRIME_COMPRESS_PREVIOUS ;
 int encode_15_7 (int *,TYPE_2__*,int const*,int,int) ;
 int encode_bgr (TYPE_2__*,int const*,int) ;
 int encode_zlib (TYPE_2__*,int ,unsigned int*,int) ;
 int encode_zlibprime (TYPE_2__*,TYPE_2__*,int *,unsigned int*,int) ;
 int memcpy (int ,int *,unsigned int) ;

__attribute__((used)) static int encode_block(FlashSV2Context *s, Palette * palette, Block * b,
                        Block * prev, const uint8_t * src, int stride, int comp,
                        int dist, int keyframe)
{
    unsigned buf_size = b->width * b->height * 6;
    uint8_t *buf = s->blockbuffer;
    int res;

    if (b->flags & COLORSPACE_15_7) {
        encode_15_7(palette, b, src, stride, dist);
    } else {
        encode_bgr(b, src, stride);
    }

    if (b->len > 0) {
        b->data_size = buf_size;
        res = encode_zlib(b, b->data, &b->data_size, comp);
        if (res)
            return res;

        if (!keyframe) {
            res = encode_zlibprime(b, prev, buf, &buf_size, comp);
            if (res)
                return res;

            if (buf_size < b->data_size) {
                b->data_size = buf_size;
                memcpy(b->data, buf, buf_size);
                b->flags |= ZLIB_PRIME_COMPRESS_PREVIOUS;
            }
        }
    } else {
        b->data_size = 0;
    }
    return 0;
}
