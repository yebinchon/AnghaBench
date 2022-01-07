
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int* coded_sample_fmt; int* coded_sample_rate; int channel_arrangement; int ch_modifier_thd0; int ch_modifier_thd1; int ch_modifier_thd2; int flags; int coded_peak_bitrate; int substream_info; int fs; int wordlength; int channel_occupancy; int summary_info; TYPE_1__* avctx; } ;
struct TYPE_4__ {scalar_t__ codec_id; } ;
typedef int PutBitContext ;
typedef TYPE_2__ MLPEncodeContext ;


 scalar_t__ AV_CODEC_ID_MLP ;
 scalar_t__ AV_CODEC_ID_TRUEHD ;
 int AV_WL16 (int *,int ) ;
 int MAJOR_SYNC_INFO_SIGNATURE ;
 int SYNC_MAJOR ;
 int SYNC_MLP ;
 int SYNC_TRUEHD ;
 int ff_mlp_checksum16 (int *,int) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int *,int) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void write_major_sync(MLPEncodeContext *ctx, uint8_t *buf, int buf_size)
{
    PutBitContext pb;

    init_put_bits(&pb, buf, buf_size);

    put_bits(&pb, 24, SYNC_MAJOR );

    if (ctx->avctx->codec_id == AV_CODEC_ID_MLP) {
        put_bits(&pb, 8, SYNC_MLP );
        put_bits(&pb, 4, ctx->coded_sample_fmt [0]);
        put_bits(&pb, 4, ctx->coded_sample_fmt [1]);
        put_bits(&pb, 4, ctx->coded_sample_rate[0]);
        put_bits(&pb, 4, ctx->coded_sample_rate[1]);
        put_bits(&pb, 4, 0 );
        put_bits(&pb, 4, 0 );
        put_bits(&pb, 3, 0 );
        put_bits(&pb, 5, ctx->channel_arrangement );
    } else if (ctx->avctx->codec_id == AV_CODEC_ID_TRUEHD) {
        put_bits(&pb, 8, SYNC_TRUEHD );
        put_bits(&pb, 4, ctx->coded_sample_rate[0]);
        put_bits(&pb, 4, 0 );
        put_bits(&pb, 2, ctx->ch_modifier_thd0 );
        put_bits(&pb, 2, ctx->ch_modifier_thd1 );
        put_bits(&pb, 5, ctx->channel_arrangement );
        put_bits(&pb, 2, ctx->ch_modifier_thd2 );
        put_bits(&pb, 13, ctx->channel_arrangement );
    }

    put_bits(&pb, 16, MAJOR_SYNC_INFO_SIGNATURE);
    put_bits(&pb, 16, ctx->flags );
    put_bits(&pb, 16, 0 );
    put_bits(&pb, 1, 1 );
    put_bits(&pb, 15, ctx->coded_peak_bitrate );
    put_bits(&pb, 4, 1 );
    put_bits(&pb, 4, 0x1 );


    put_bits(&pb, 8, ctx->substream_info );
    put_bits(&pb, 5, ctx->fs );
    put_bits(&pb, 5, ctx->wordlength );
    put_bits(&pb, 6, ctx->channel_occupancy );
    put_bits(&pb, 3, 0 );
    put_bits(&pb, 10, 0 );
    put_bits(&pb, 3, 0 );
    put_bits(&pb, 16, 0x8080 );
    put_bits(&pb, 7, 0 );
    put_bits(&pb, 4, 0 );
    put_bits(&pb, 5, ctx->summary_info );

    flush_put_bits(&pb);

    AV_WL16(buf+26, ff_mlp_checksum16(buf, 26));
}
