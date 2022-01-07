
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nfreqbands; } ;
struct TYPE_4__ {int nfreqbands; int nframesegs; int nchsets; int* navi; int frame_size; int avctx; int gb; int seg_size_nbits; TYPE_2__* chset; int navi_size; } ;
typedef TYPE_1__ DCAXllDecoder ;
typedef TYPE_2__ DCAXllChSet ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_fast_malloc (int**,int *,int) ;
 int av_log (int ,int ,char*,...) ;
 scalar_t__ ff_dca_check_crc (int ,int *,int,int) ;
 int get_bits_count (int *) ;
 int get_bits_long (int *,int ) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int parse_navi_table(DCAXllDecoder *s)
{
    int chs, seg, band, navi_nb, navi_pos, *navi_ptr;
    DCAXllChSet *c;


    navi_nb = s->nfreqbands * s->nframesegs * s->nchsets;
    if (navi_nb > 1024) {
        av_log(s->avctx, AV_LOG_ERROR, "Too many NAVI entries (%d)\n", navi_nb);
        return AVERROR_INVALIDDATA;
    }


    av_fast_malloc(&s->navi, &s->navi_size, navi_nb * sizeof(*s->navi));
    if (!s->navi)
        return AVERROR(ENOMEM);


    navi_pos = get_bits_count(&s->gb);
    navi_ptr = s->navi;
    for (band = 0; band < s->nfreqbands; band++) {
        for (seg = 0; seg < s->nframesegs; seg++) {
            for (chs = 0, c = s->chset; chs < s->nchsets; chs++, c++) {
                int size = 0;
                if (c->nfreqbands > band) {
                    size = get_bits_long(&s->gb, s->seg_size_nbits);
                    if (size < 0 || size >= s->frame_size) {
                        av_log(s->avctx, AV_LOG_ERROR, "Invalid NAVI segment size (%d bytes)\n", size);
                        return AVERROR_INVALIDDATA;
                    }
                    size++;
                }
                *navi_ptr++ = size;
            }
        }
    }



    skip_bits(&s->gb, -get_bits_count(&s->gb) & 7);
    skip_bits(&s->gb, 16);


    if (ff_dca_check_crc(s->avctx, &s->gb, navi_pos, get_bits_count(&s->gb))) {
        av_log(s->avctx, AV_LOG_ERROR, "Invalid NAVI checksum\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
