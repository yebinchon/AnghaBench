
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int size; int const* data; } ;
struct TYPE_6__ {scalar_t__ remove; } ;
typedef TYPE_1__ ExtractExtradataContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVBSFContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int UINT32_MAX ;
 int const* av_malloc (scalar_t__) ;
 int const* avpriv_find_start_code (int const*,int const*,int*) ;
 int memcpy (int const*,int const*,int) ;
 int memset (int const*,int ,scalar_t__) ;

__attribute__((used)) static int extract_extradata_mpeg4(AVBSFContext *ctx, AVPacket *pkt,
                                   uint8_t **data, int *size)
{
    ExtractExtradataContext *s = ctx->priv_data;
    const uint8_t *ptr = pkt->data, *end = pkt->data + pkt->size;
    uint32_t state = UINT32_MAX;

    while (ptr < end) {
        ptr = avpriv_find_start_code(ptr, end, &state);
        if (state == 0x1B3 || state == 0x1B6) {
            if (ptr - pkt->data > 4) {
                *size = ptr - 4 - pkt->data;
                *data = av_malloc(*size + AV_INPUT_BUFFER_PADDING_SIZE);
                if (!*data)
                    return AVERROR(ENOMEM);

                memcpy(*data, pkt->data, *size);
                memset(*data + *size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

                if (s->remove) {
                    pkt->data += *size;
                    pkt->size -= *size;
                }
            }
            break;
        }
    }
    return 0;
}
