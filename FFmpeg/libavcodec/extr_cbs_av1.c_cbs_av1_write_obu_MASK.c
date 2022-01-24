#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_23__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_17__ ;
typedef  struct TYPE_26__   TYPE_12__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
struct TYPE_34__ {size_t data_size; int /*<<< orphan*/  data; } ;
struct TYPE_25__ {TYPE_6__ tile_data; } ;
struct TYPE_28__ {TYPE_6__ tile_data; } ;
struct TYPE_29__ {TYPE_1__ tile_group; } ;
struct TYPE_26__ {TYPE_6__ tile_data; } ;
struct TYPE_30__ {int /*<<< orphan*/  padding; int /*<<< orphan*/  metadata; TYPE_10__ tile_list; TYPE_23__ frame; TYPE_12__ tile_group; int /*<<< orphan*/  frame_header; int /*<<< orphan*/  sequence_header; } ;
struct TYPE_27__ {int obu_has_size_field; int obu_type; } ;
struct TYPE_35__ {size_t obu_size; TYPE_2__ obu; TYPE_17__ header; } ;
struct TYPE_33__ {scalar_t__ write_buffer; int /*<<< orphan*/ * sequence_header; int /*<<< orphan*/  sequence_header_ref; } ;
struct TYPE_32__ {TYPE_5__* priv_data; } ;
struct TYPE_31__ {int /*<<< orphan*/  content_ref; TYPE_7__* content; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_3__ CodedBitstreamUnit ;
typedef  TYPE_4__ CodedBitstreamContext ;
typedef  TYPE_5__ CodedBitstreamAV1Context ;
typedef  TYPE_6__ AV1RawTileData ;
typedef  TYPE_7__ AV1RawOBU ;

/* Variables and functions */
#define  AV1_OBU_FRAME 136 
#define  AV1_OBU_FRAME_HEADER 135 
#define  AV1_OBU_METADATA 134 
#define  AV1_OBU_PADDING 133 
#define  AV1_OBU_REDUNDANT_FRAME_HEADER 132 
#define  AV1_OBU_SEQUENCE_HEADER 131 
#define  AV1_OBU_TEMPORAL_DELIMITER 130 
#define  AV1_OBU_TILE_GROUP 129 
#define  AV1_OBU_TILE_LIST 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_23__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_17__*) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_12__*) ; 
 int FUNC13 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_10__*) ; 
 int FUNC14 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC22(CodedBitstreamContext *ctx,
                             CodedBitstreamUnit *unit,
                             PutBitContext *pbc)
{
    CodedBitstreamAV1Context *priv = ctx->priv_data;
    AV1RawOBU *obu = unit->content;
    PutBitContext pbc_tmp;
    AV1RawTileData *td;
    size_t header_size;
    int err, start_pos, end_pos, data_pos;

    // OBUs in the normal bitstream format must contain a size field
    // in every OBU (in annex B it is optional, but we don't support
    // writing that).
    obu->header.obu_has_size_field = 1;

    err = FUNC8(ctx, pbc, &obu->header);
    if (err < 0)
        return err;

    if (obu->header.obu_has_size_field) {
        pbc_tmp = *pbc;
        // Add space for the size field to fill later.
        FUNC18(pbc, 0);
        FUNC18(pbc, 0);
    }

    td = NULL;
    start_pos = FUNC19(pbc);

    switch (obu->header.obu_type) {
    case AV1_OBU_SEQUENCE_HEADER:
        {
            err = FUNC10(ctx, pbc,
                                                    &obu->obu.sequence_header);
            if (err < 0)
                return err;

            FUNC3(&priv->sequence_header_ref);
            priv->sequence_header = NULL;

            priv->sequence_header_ref = FUNC2(unit->content_ref);
            if (!priv->sequence_header_ref)
                return FUNC0(ENOMEM);
            priv->sequence_header = &obu->obu.sequence_header;
        }
        break;
    case AV1_OBU_TEMPORAL_DELIMITER:
        {
            err = FUNC11(ctx, pbc);
            if (err < 0)
                return err;
        }
        break;
    case AV1_OBU_FRAME_HEADER:
    case AV1_OBU_REDUNDANT_FRAME_HEADER:
        {
            err = FUNC4(ctx, pbc,
                                                 &obu->obu.frame_header,
                                                 obu->header.obu_type ==
                                                 AV1_OBU_REDUNDANT_FRAME_HEADER,
                                                 NULL);
            if (err < 0)
                return err;
        }
        break;
    case AV1_OBU_TILE_GROUP:
        {
            err = FUNC12(ctx, pbc,
                                               &obu->obu.tile_group);
            if (err < 0)
                return err;

            td = &obu->obu.tile_group.tile_data;
        }
        break;
    case AV1_OBU_FRAME:
        {
            err = FUNC5(ctx, pbc, &obu->obu.frame, NULL);
            if (err < 0)
                return err;

            td = &obu->obu.frame.tile_group.tile_data;
        }
        break;
    case AV1_OBU_TILE_LIST:
        {
            err = FUNC13(ctx, pbc, &obu->obu.tile_list);
            if (err < 0)
                return err;

            td = &obu->obu.tile_list.tile_data;
        }
        break;
    case AV1_OBU_METADATA:
        {
            err = FUNC7(ctx, pbc, &obu->obu.metadata);
            if (err < 0)
                return err;
        }
        break;
    case AV1_OBU_PADDING:
        {
            err = FUNC9(ctx, pbc, &obu->obu.padding);
            if (err < 0)
                return err;
        }
        break;
    default:
        return FUNC0(ENOSYS);
    }

    end_pos = FUNC19(pbc);
    header_size = (end_pos - start_pos + 7) / 8;
    if (td) {
        obu->obu_size = header_size + td->data_size;
    } else if (header_size > 0) {
        // Add trailing bits and recalculate.
        err = FUNC14(ctx, pbc, 8 - end_pos % 8);
        if (err < 0)
            return err;
        end_pos = FUNC19(pbc);
        obu->obu_size = header_size = (end_pos - start_pos + 7) / 8;
    } else {
        // Empty OBU.
        obu->obu_size = 0;
    }

    end_pos = FUNC19(pbc);
    // Must now be byte-aligned.
    FUNC1(end_pos % 8 == 0);
    FUNC15(pbc);
    start_pos /= 8;
    end_pos   /= 8;

    *pbc = pbc_tmp;
    err = FUNC6(ctx, pbc, "obu_size", obu->obu_size);
    if (err < 0)
        return err;

    data_pos = FUNC19(pbc) / 8;
    FUNC15(pbc);
    FUNC1(data_pos <= start_pos);

    if (8 * obu->obu_size > FUNC20(pbc))
        return FUNC0(ENOSPC);

    if (obu->obu_size > 0) {
        FUNC17(priv->write_buffer + data_pos,
                priv->write_buffer + start_pos, header_size);
        FUNC21(pbc, header_size);

        if (td) {
            FUNC16(priv->write_buffer + data_pos + header_size,
                   td->data, td->data_size);
            FUNC21(pbc, td->data_size);
        }
    }

    return 0;
}