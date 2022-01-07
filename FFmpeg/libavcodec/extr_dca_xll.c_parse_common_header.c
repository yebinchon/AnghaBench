
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nchsets; int nframesegs; int nsegsamples_log2; int nsegsamples; int nframesamples_log2; int nframesamples; int seg_size_nbits; int band_crc_present; int ch_mask_nbits; int fixed_lsb_width; int avctx; int gb; scalar_t__ scalable_lsbs; int frame_size; } ;
typedef TYPE_1__ DCAXllDecoder ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int DCA_SYNCWORD_XLL ;
 int DCA_XLL_CHSETS_MAX ;
 int DCA_XLL_PBR_BUFFER_MAX ;
 int EAGAIN ;
 int av_log (int ,int ,char*,...) ;
 int avpriv_request_sample (int ,char*,int) ;
 scalar_t__ ff_dca_check_crc (int ,int *,int,int) ;
 scalar_t__ ff_dca_seek_bits (int *,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int get_bits_long (int *,int) ;

__attribute__((used)) static int parse_common_header(DCAXllDecoder *s)
{
    int stream_ver, header_size, frame_size_nbits, nframesegs_log2;


    if (get_bits_long(&s->gb, 32) != DCA_SYNCWORD_XLL) {
        av_log(s->avctx, AV_LOG_VERBOSE, "Invalid XLL sync word\n");
        return AVERROR(EAGAIN);
    }


    stream_ver = get_bits(&s->gb, 4) + 1;
    if (stream_ver > 1) {
        avpriv_request_sample(s->avctx, "XLL stream version %d", stream_ver);
        return AVERROR_PATCHWELCOME;
    }


    header_size = get_bits(&s->gb, 8) + 1;


    if (ff_dca_check_crc(s->avctx, &s->gb, 32, header_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid XLL common header checksum\n");
        return AVERROR_INVALIDDATA;
    }


    frame_size_nbits = get_bits(&s->gb, 5) + 1;


    s->frame_size = get_bits_long(&s->gb, frame_size_nbits);
    if (s->frame_size < 0 || s->frame_size >= DCA_XLL_PBR_BUFFER_MAX) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid XLL frame size (%d bytes)\n", s->frame_size);
        return AVERROR_INVALIDDATA;
    }
    s->frame_size++;


    s->nchsets = get_bits(&s->gb, 4) + 1;
    if (s->nchsets > DCA_XLL_CHSETS_MAX) {
        avpriv_request_sample(s->avctx, "%d XLL channel sets", s->nchsets);
        return AVERROR_PATCHWELCOME;
    }


    nframesegs_log2 = get_bits(&s->gb, 4);
    s->nframesegs = 1 << nframesegs_log2;
    if (s->nframesegs > 1024) {
        av_log(s->avctx, AV_LOG_ERROR, "Too many segments per XLL frame\n");
        return AVERROR_INVALIDDATA;
    }




    s->nsegsamples_log2 = get_bits(&s->gb, 4);
    if (!s->nsegsamples_log2) {
        av_log(s->avctx, AV_LOG_ERROR, "Too few samples per XLL segment\n");
        return AVERROR_INVALIDDATA;
    }
    s->nsegsamples = 1 << s->nsegsamples_log2;
    if (s->nsegsamples > 512) {
        av_log(s->avctx, AV_LOG_ERROR, "Too many samples per XLL segment\n");
        return AVERROR_INVALIDDATA;
    }


    s->nframesamples_log2 = s->nsegsamples_log2 + nframesegs_log2;
    s->nframesamples = 1 << s->nframesamples_log2;
    if (s->nframesamples > 65536) {
        av_log(s->avctx, AV_LOG_ERROR, "Too many samples per XLL frame\n");
        return AVERROR_INVALIDDATA;
    }


    s->seg_size_nbits = get_bits(&s->gb, 5) + 1;






    s->band_crc_present = get_bits(&s->gb, 2);


    s->scalable_lsbs = get_bits1(&s->gb);


    s->ch_mask_nbits = get_bits(&s->gb, 5) + 1;


    if (s->scalable_lsbs)
        s->fixed_lsb_width = get_bits(&s->gb, 4);
    else
        s->fixed_lsb_width = 0;




    if (ff_dca_seek_bits(&s->gb, header_size * 8)) {
        av_log(s->avctx, AV_LOG_ERROR, "Read past end of XLL common header\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
