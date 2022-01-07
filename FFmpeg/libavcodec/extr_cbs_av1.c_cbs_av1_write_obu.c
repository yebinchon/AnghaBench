
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_23__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_17__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_34__ {size_t data_size; int data; } ;
struct TYPE_25__ {TYPE_6__ tile_data; } ;
struct TYPE_28__ {TYPE_6__ tile_data; } ;
struct TYPE_29__ {TYPE_1__ tile_group; } ;
struct TYPE_26__ {TYPE_6__ tile_data; } ;
struct TYPE_30__ {int padding; int metadata; TYPE_10__ tile_list; TYPE_23__ frame; TYPE_12__ tile_group; int frame_header; int sequence_header; } ;
struct TYPE_27__ {int obu_has_size_field; int obu_type; } ;
struct TYPE_35__ {size_t obu_size; TYPE_2__ obu; TYPE_17__ header; } ;
struct TYPE_33__ {scalar_t__ write_buffer; int * sequence_header; int sequence_header_ref; } ;
struct TYPE_32__ {TYPE_5__* priv_data; } ;
struct TYPE_31__ {int content_ref; TYPE_7__* content; } ;
typedef int PutBitContext ;
typedef TYPE_3__ CodedBitstreamUnit ;
typedef TYPE_4__ CodedBitstreamContext ;
typedef TYPE_5__ CodedBitstreamAV1Context ;
typedef TYPE_6__ AV1RawTileData ;
typedef TYPE_7__ AV1RawOBU ;
 int AVERROR (int ) ;
 int ENOMEM ;
 int ENOSPC ;
 int ENOSYS ;
 int av_assert0 (int) ;
 int av_buffer_ref (int ) ;
 int av_buffer_unref (int *) ;
 int cbs_av1_write_frame_header_obu (TYPE_4__*,int *,int *,int,int *) ;
 int cbs_av1_write_frame_obu (TYPE_4__*,int *,TYPE_23__*,int *) ;
 int cbs_av1_write_leb128 (TYPE_4__*,int *,char*,size_t) ;
 int cbs_av1_write_metadata_obu (TYPE_4__*,int *,int *) ;
 int cbs_av1_write_obu_header (TYPE_4__*,int *,TYPE_17__*) ;
 int cbs_av1_write_padding_obu (TYPE_4__*,int *,int *) ;
 int cbs_av1_write_sequence_header_obu (TYPE_4__*,int *,int *) ;
 int cbs_av1_write_temporal_delimiter_obu (TYPE_4__*,int *) ;
 int cbs_av1_write_tile_group_obu (TYPE_4__*,int *,TYPE_12__*) ;
 int cbs_av1_write_tile_list_obu (TYPE_4__*,int *,TYPE_10__*) ;
 int cbs_av1_write_trailing_bits (TYPE_4__*,int *,int) ;
 int flush_put_bits (int *) ;
 int memcpy (scalar_t__,int ,size_t) ;
 int memmove (scalar_t__,scalar_t__,size_t) ;
 int put_bits32 (int *,int ) ;
 int put_bits_count (int *) ;
 int put_bits_left (int *) ;
 int skip_put_bytes (int *,size_t) ;

__attribute__((used)) static int cbs_av1_write_obu(CodedBitstreamContext *ctx,
                             CodedBitstreamUnit *unit,
                             PutBitContext *pbc)
{
    CodedBitstreamAV1Context *priv = ctx->priv_data;
    AV1RawOBU *obu = unit->content;
    PutBitContext pbc_tmp;
    AV1RawTileData *td;
    size_t header_size;
    int err, start_pos, end_pos, data_pos;




    obu->header.obu_has_size_field = 1;

    err = cbs_av1_write_obu_header(ctx, pbc, &obu->header);
    if (err < 0)
        return err;

    if (obu->header.obu_has_size_field) {
        pbc_tmp = *pbc;

        put_bits32(pbc, 0);
        put_bits32(pbc, 0);
    }

    td = ((void*)0);
    start_pos = put_bits_count(pbc);

    switch (obu->header.obu_type) {
    case 131:
        {
            err = cbs_av1_write_sequence_header_obu(ctx, pbc,
                                                    &obu->obu.sequence_header);
            if (err < 0)
                return err;

            av_buffer_unref(&priv->sequence_header_ref);
            priv->sequence_header = ((void*)0);

            priv->sequence_header_ref = av_buffer_ref(unit->content_ref);
            if (!priv->sequence_header_ref)
                return AVERROR(ENOMEM);
            priv->sequence_header = &obu->obu.sequence_header;
        }
        break;
    case 130:
        {
            err = cbs_av1_write_temporal_delimiter_obu(ctx, pbc);
            if (err < 0)
                return err;
        }
        break;
    case 135:
    case 132:
        {
            err = cbs_av1_write_frame_header_obu(ctx, pbc,
                                                 &obu->obu.frame_header,
                                                 obu->header.obu_type ==
                                                 132,
                                                 ((void*)0));
            if (err < 0)
                return err;
        }
        break;
    case 129:
        {
            err = cbs_av1_write_tile_group_obu(ctx, pbc,
                                               &obu->obu.tile_group);
            if (err < 0)
                return err;

            td = &obu->obu.tile_group.tile_data;
        }
        break;
    case 136:
        {
            err = cbs_av1_write_frame_obu(ctx, pbc, &obu->obu.frame, ((void*)0));
            if (err < 0)
                return err;

            td = &obu->obu.frame.tile_group.tile_data;
        }
        break;
    case 128:
        {
            err = cbs_av1_write_tile_list_obu(ctx, pbc, &obu->obu.tile_list);
            if (err < 0)
                return err;

            td = &obu->obu.tile_list.tile_data;
        }
        break;
    case 134:
        {
            err = cbs_av1_write_metadata_obu(ctx, pbc, &obu->obu.metadata);
            if (err < 0)
                return err;
        }
        break;
    case 133:
        {
            err = cbs_av1_write_padding_obu(ctx, pbc, &obu->obu.padding);
            if (err < 0)
                return err;
        }
        break;
    default:
        return AVERROR(ENOSYS);
    }

    end_pos = put_bits_count(pbc);
    header_size = (end_pos - start_pos + 7) / 8;
    if (td) {
        obu->obu_size = header_size + td->data_size;
    } else if (header_size > 0) {

        err = cbs_av1_write_trailing_bits(ctx, pbc, 8 - end_pos % 8);
        if (err < 0)
            return err;
        end_pos = put_bits_count(pbc);
        obu->obu_size = header_size = (end_pos - start_pos + 7) / 8;
    } else {

        obu->obu_size = 0;
    }

    end_pos = put_bits_count(pbc);

    av_assert0(end_pos % 8 == 0);
    flush_put_bits(pbc);
    start_pos /= 8;
    end_pos /= 8;

    *pbc = pbc_tmp;
    err = cbs_av1_write_leb128(ctx, pbc, "obu_size", obu->obu_size);
    if (err < 0)
        return err;

    data_pos = put_bits_count(pbc) / 8;
    flush_put_bits(pbc);
    av_assert0(data_pos <= start_pos);

    if (8 * obu->obu_size > put_bits_left(pbc))
        return AVERROR(ENOSPC);

    if (obu->obu_size > 0) {
        memmove(priv->write_buffer + data_pos,
                priv->write_buffer + start_pos, header_size);
        skip_put_bytes(pbc, header_size);

        if (td) {
            memcpy(priv->write_buffer + data_pos + header_size,
                   td->data, td->data_size);
            skip_put_bytes(pbc, td->data_size);
        }
    }

    return 0;
}
