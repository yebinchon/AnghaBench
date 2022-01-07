
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ access_unit_size; int avctx; int ** bypassed_lsbs; TYPE_1__* substream; } ;
struct TYPE_6__ {scalar_t__ blockpos; scalar_t__ blocksize; unsigned int min_channel; unsigned int max_channel; scalar_t__ data_check_present; } ;
typedef TYPE_1__ SubStream ;
typedef TYPE_2__ MLPDecodeContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int avpriv_request_sample (int ,char*) ;
 int filter_channel (TYPE_2__*,unsigned int,unsigned int) ;
 scalar_t__ get_bits (int *,int) ;
 unsigned int get_bits_count (int *) ;
 int memset (int *,int ,int) ;
 int read_huff_channels (TYPE_2__*,int *,unsigned int,unsigned int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int read_block_data(MLPDecodeContext *m, GetBitContext *gbp,
                           unsigned int substr)
{
    SubStream *s = &m->substream[substr];
    unsigned int i, ch, expected_stream_pos = 0;
    int ret;

    if (s->data_check_present) {
        expected_stream_pos = get_bits_count(gbp);
        expected_stream_pos += get_bits(gbp, 16);
        avpriv_request_sample(m->avctx,
                              "Substreams with VLC block size check info");
    }

    if (s->blockpos + s->blocksize > m->access_unit_size) {
        av_log(m->avctx, AV_LOG_ERROR, "too many audio samples in frame\n");
        return AVERROR_INVALIDDATA;
    }

    memset(&m->bypassed_lsbs[s->blockpos][0], 0,
           s->blocksize * sizeof(m->bypassed_lsbs[0]));

    for (i = 0; i < s->blocksize; i++)
        if ((ret = read_huff_channels(m, gbp, substr, i)) < 0)
            return ret;

    for (ch = s->min_channel; ch <= s->max_channel; ch++)
        filter_channel(m, substr, ch);

    s->blockpos += s->blocksize;

    if (s->data_check_present) {
        if (get_bits_count(gbp) != expected_stream_pos)
            av_log(m->avctx, AV_LOG_ERROR, "block data length mismatch\n");
        skip_bits(gbp, 8);
    }

    return 0;
}
