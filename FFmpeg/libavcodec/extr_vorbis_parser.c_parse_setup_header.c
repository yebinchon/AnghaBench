
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int mode_count; int mode_mask; int prev_mask; scalar_t__* mode_blocksize; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVVorbisParseContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_free (int*) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int av_log2 (int) ;
 int* av_malloc (int) ;
 int avpriv_request_sample (TYPE_1__*,char*,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_count (int *) ;
 int get_bits_left (int *) ;
 int init_get_bits (int *,int*,int) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int skip_bits (int *,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int parse_setup_header(AVVorbisParseContext *s,
                              const uint8_t *buf, int buf_size)
{
    GetBitContext gb, gb0;
    uint8_t *rev_buf;
    int i, ret = 0;
    int got_framing_bit, mode_count, got_mode_header, last_mode_count = 0;


    if (buf_size < 7) {
        av_log(s, AV_LOG_ERROR, "Setup header is too short\n");
        return AVERROR_INVALIDDATA;
    }


    if (buf[0] != 5) {
        av_log(s, AV_LOG_ERROR, "Wrong packet type in Setup header\n");
        return AVERROR_INVALIDDATA;
    }


    if (memcmp(&buf[1], "vorbis", 6)) {
        av_log(s, AV_LOG_ERROR, "Invalid packet signature in Setup header\n");
        return AVERROR_INVALIDDATA;
    }


    if (!(rev_buf = av_malloc(buf_size))) {
        av_log(s, AV_LOG_ERROR, "Out of memory\n");
        return AVERROR(ENOMEM);
    }
    for (i = 0; i < buf_size; i++)
        rev_buf[i] = buf[buf_size - 1 - i];
    init_get_bits(&gb, rev_buf, buf_size * 8);

    got_framing_bit = 0;
    while (get_bits_left(&gb) > 97) {
        if (get_bits1(&gb)) {
            got_framing_bit = get_bits_count(&gb);
            break;
        }
    }
    if (!got_framing_bit) {
        av_log(s, AV_LOG_ERROR, "Invalid Setup header\n");
        ret = AVERROR_INVALIDDATA;
        goto bad_header;
    }







    mode_count = 0;
    got_mode_header = 0;
    while (get_bits_left(&gb) >= 97) {
        if (get_bits(&gb, 8) > 63 || get_bits(&gb, 16) || get_bits(&gb, 16))
            break;
        skip_bits(&gb, 1);
        mode_count++;
        if (mode_count > 64)
            break;
        gb0 = gb;
        if (get_bits(&gb0, 6) + 1 == mode_count) {
            got_mode_header = 1;
            last_mode_count = mode_count;
        }
    }
    if (!got_mode_header) {
        av_log(s, AV_LOG_ERROR, "Invalid Setup header\n");
        ret = AVERROR_INVALIDDATA;
        goto bad_header;
    }




    if (last_mode_count > 2) {
        avpriv_request_sample(s,
                              "%d modes (either a false positive or a "
                              "sample from an unknown encoder)",
                              last_mode_count);
    }


    if (last_mode_count > 63) {
        av_log(s, AV_LOG_ERROR, "Unsupported mode count: %d\n",
               last_mode_count);
        ret = AVERROR_INVALIDDATA;
        goto bad_header;
    }
    s->mode_count = mode_count = last_mode_count;


    s->mode_mask = ((1 << (av_log2(mode_count - 1) + 1)) - 1) << 1;

    s->prev_mask = (s->mode_mask | 0x1) + 1;

    init_get_bits(&gb, rev_buf, buf_size * 8);
    skip_bits_long(&gb, got_framing_bit);
    for (i = mode_count - 1; i >= 0; i--) {
        skip_bits_long(&gb, 40);
        s->mode_blocksize[i] = get_bits1(&gb);
    }

bad_header:
    av_free(rev_buf);
    return ret;
}
