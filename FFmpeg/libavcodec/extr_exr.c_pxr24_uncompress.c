
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {scalar_t__ pixel_type; } ;
struct TYPE_7__ {int nb_channels; int xdelta; TYPE_3__* channels; } ;
struct TYPE_6__ {int xsize; int ysize; int * uncompressed_data; int * tmp; } ;
typedef TYPE_1__ EXRThreadData ;
typedef TYPE_2__ EXRContext ;
typedef TYPE_3__ EXRChannel ;


 int AVERROR_INVALIDDATA ;



 scalar_t__ Z_OK ;
 int bytestream_put_le16 (int **,int) ;
 int bytestream_put_le32 (int **,int) ;
 scalar_t__ uncompress (int *,unsigned long*,int const*,int) ;

__attribute__((used)) static int pxr24_uncompress(EXRContext *s, const uint8_t *src,
                            int compressed_size, int uncompressed_size,
                            EXRThreadData *td)
{
    unsigned long dest_len, expected_len = 0;
    const uint8_t *in = td->tmp;
    uint8_t *out;
    int c, i, j;

    for (i = 0; i < s->nb_channels; i++) {
        if (s->channels[i].pixel_type == 130) {
            expected_len += (td->xsize * td->ysize * 3);
        } else if (s->channels[i].pixel_type == 129) {
            expected_len += (td->xsize * td->ysize * 2);
        } else {
            expected_len += (td->xsize * td->ysize * 4);
        }
    }

    dest_len = expected_len;

    if (uncompress(td->tmp, &dest_len, src, compressed_size) != Z_OK) {
        return AVERROR_INVALIDDATA;
    } else if (dest_len != expected_len) {
        return AVERROR_INVALIDDATA;
    }

    out = td->uncompressed_data;
    for (i = 0; i < td->ysize; i++)
        for (c = 0; c < s->nb_channels; c++) {
            EXRChannel *channel = &s->channels[c];
            const uint8_t *ptr[4];
            uint32_t pixel = 0;

            switch (channel->pixel_type) {
            case 130:
                ptr[0] = in;
                ptr[1] = ptr[0] + td->xsize;
                ptr[2] = ptr[1] + td->xsize;
                in = ptr[2] + td->xsize;

                for (j = 0; j < td->xsize; ++j) {
                    uint32_t diff = ((unsigned)*(ptr[0]++) << 24) |
                                    (*(ptr[1]++) << 16) |
                                    (*(ptr[2]++) << 8);
                    pixel += diff;
                    bytestream_put_le32(&out, pixel);
                }
                break;
            case 129:
                ptr[0] = in;
                ptr[1] = ptr[0] + td->xsize;
                in = ptr[1] + td->xsize;
                for (j = 0; j < td->xsize; j++) {
                    uint32_t diff = (*(ptr[0]++) << 8) | *(ptr[1]++);

                    pixel += diff;
                    bytestream_put_le16(&out, pixel);
                }
                break;
            case 128:
                ptr[0] = in;
                ptr[1] = ptr[0] + s->xdelta;
                ptr[2] = ptr[1] + s->xdelta;
                ptr[3] = ptr[2] + s->xdelta;
                in = ptr[3] + s->xdelta;

                for (j = 0; j < s->xdelta; ++j) {
                    uint32_t diff = ((uint32_t)*(ptr[0]++) << 24) |
                    (*(ptr[1]++) << 16) |
                    (*(ptr[2]++) << 8 ) |
                    (*(ptr[3]++));
                    pixel += diff;
                    bytestream_put_le32(&out, pixel);
                }
                break;
            default:
                return AVERROR_INVALIDDATA;
            }
        }

    return 0;
}
