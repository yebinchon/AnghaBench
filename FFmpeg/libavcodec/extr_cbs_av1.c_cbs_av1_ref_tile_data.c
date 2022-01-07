
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int data_size; scalar_t__ data; int data_ref; } ;
struct TYPE_8__ {int log_ctx; } ;
struct TYPE_7__ {int data_size; scalar_t__ data; int data_ref; } ;
typedef int GetBitContext ;
typedef TYPE_1__ CodedBitstreamUnit ;
typedef TYPE_2__ CodedBitstreamContext ;
typedef TYPE_3__ AV1RawTileData ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_assert0 (int) ;
 int av_buffer_ref (int ) ;
 int av_log (int ,int ,char*,int) ;
 int get_bits_count (int *) ;

__attribute__((used)) static int cbs_av1_ref_tile_data(CodedBitstreamContext *ctx,
                                 CodedBitstreamUnit *unit,
                                 GetBitContext *gbc,
                                 AV1RawTileData *td)
{
    int pos;

    pos = get_bits_count(gbc);
    if (pos >= 8 * unit->data_size) {
        av_log(ctx->log_ctx, AV_LOG_ERROR, "Bitstream ended before "
               "any data in tile group (%d bits read).\n", pos);
        return AVERROR_INVALIDDATA;
    }

    av_assert0(pos % 8 == 0);

    td->data_ref = av_buffer_ref(unit->data_ref);
    if (!td->data_ref)
        return AVERROR(ENOMEM);

    td->data = unit->data + pos / 8;
    td->data_size = unit->data_size - pos / 8;

    return 0;
}
