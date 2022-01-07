
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int max_blocksize; int min_framesize; int max_framesize; int samplerate; int channels; int sample_count; int md5sum; TYPE_1__* avctx; } ;
struct TYPE_4__ {int bits_per_raw_sample; } ;
typedef int PutBitContext ;
typedef TYPE_2__ FlacEncodeContext ;


 int FLAC_STREAMINFO_SIZE ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int *,int ) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int ) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void write_streaminfo(FlacEncodeContext *s, uint8_t *header)
{
    PutBitContext pb;

    memset(header, 0, FLAC_STREAMINFO_SIZE);
    init_put_bits(&pb, header, FLAC_STREAMINFO_SIZE);


    put_bits(&pb, 16, s->max_blocksize);
    put_bits(&pb, 16, s->max_blocksize);
    put_bits(&pb, 24, s->min_framesize);
    put_bits(&pb, 24, s->max_framesize);
    put_bits(&pb, 20, s->samplerate);
    put_bits(&pb, 3, s->channels-1);
    put_bits(&pb, 5, s->avctx->bits_per_raw_sample - 1);

    put_bits(&pb, 24, (s->sample_count & 0xFFFFFF000LL) >> 12);
    put_bits(&pb, 12, s->sample_count & 0x000000FFFLL);
    flush_put_bits(&pb);
    memcpy(&header[18], s->md5sum, 16);
}
