
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_5__ {int discard_damaged_percentage; } ;
struct TYPE_4__ {int const* data; int size; int sega_film_skip_bytes; TYPE_3__* avctx; } ;
typedef TYPE_1__ CinepakContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_RB16 (int const*) ;
 int AV_RB24 (int const*) ;
 int avpriv_request_sample (TYPE_3__*,char*) ;

__attribute__((used)) static int cinepak_predecode_check (CinepakContext *s)
{
    int num_strips;
    int encoded_buf_size;

    num_strips = AV_RB16 (&s->data[8]);
    encoded_buf_size = AV_RB24(&s->data[1]);

    if (s->size < encoded_buf_size * (int64_t)(100 - s->avctx->discard_damaged_percentage) / 100)
        return AVERROR_INVALIDDATA;


    if (s->sega_film_skip_bytes == -1) {
        if (!encoded_buf_size) {
            avpriv_request_sample(s->avctx, "encoded_buf_size 0");
            return AVERROR_PATCHWELCOME;
        }
        if (encoded_buf_size != s->size && (s->size % encoded_buf_size) != 0) {






            if (s->size >= 16 &&
                (s->data[10] == 0xFE) &&
                (s->data[11] == 0x00) &&
                (s->data[12] == 0x00) &&
                (s->data[13] == 0x06) &&
                (s->data[14] == 0x00) &&
                (s->data[15] == 0x00))
                s->sega_film_skip_bytes = 6;
            else
                s->sega_film_skip_bytes = 2;
        } else
            s->sega_film_skip_bytes = 0;
    }

    if (s->size < 10 + s->sega_film_skip_bytes + num_strips * 12)
        return AVERROR_INVALIDDATA;

    if (num_strips) {
        const uint8_t *data = s->data + 10 + s->sega_film_skip_bytes;
        int strip_size = AV_RB24 (data + 1);
        if (strip_size < 12 || strip_size > encoded_buf_size)
            return AVERROR_INVALIDDATA;
    }

    return 0;
}
