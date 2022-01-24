#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_3__ {int profile; int level; int tier; int bitdepth; int monochrome; int chroma_subsampling_x; int chroma_subsampling_y; int chroma_sample_position; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AV1SequenceParameters ;

/* Variables and functions */
#define  AV1_OBU_METADATA 129 
#define  AV1_OBU_SEQUENCE_HEADER 128 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC6 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 

int FUNC9(AVIOContext *pb, const uint8_t *buf, int size)
{
    AVIOContext *seq_pb = NULL, *meta_pb = NULL;
    AV1SequenceParameters seq_params;
    PutBitContext pbc;
    uint8_t header[4];
    uint8_t *seq = NULL, *meta = NULL;
    int64_t obu_size;
    int start_pos, type, temporal_id, spatial_id;
    int ret, nb_seq = 0, seq_size, meta_size;

    if (size <= 0)
        return AVERROR_INVALIDDATA;

    ret = FUNC2(&seq_pb);
    if (ret < 0)
        return ret;
    ret = FUNC2(&meta_pb);
    if (ret < 0)
        goto fail;

    while (size > 0) {
        int len = FUNC6(buf, size, &obu_size, &start_pos,
                                   &type, &temporal_id, &spatial_id);
        if (len < 0) {
            ret = len;
            goto fail;
        }

        switch (type) {
        case AV1_OBU_SEQUENCE_HEADER:
            nb_seq++;
            if (!obu_size || nb_seq > 1) {
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            ret = FUNC7(&seq_params, buf + start_pos, obu_size);
            if (ret < 0)
                goto fail;

            FUNC3(seq_pb, buf, len);
            break;
        case AV1_OBU_METADATA:
            if (!obu_size) {
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            FUNC3(meta_pb, buf, len);
            break;
        default:
            break;
        }
        size -= len;
        buf  += len;
    }

    seq_size  = FUNC1(seq_pb, &seq);
    if (!seq_size) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    FUNC5(&pbc, header, sizeof(header));

    FUNC8(&pbc, 1, 1); // marker
    FUNC8(&pbc, 7, 1); // version
    FUNC8(&pbc, 3, seq_params.profile);
    FUNC8(&pbc, 5, seq_params.level);
    FUNC8(&pbc, 1, seq_params.tier);
    FUNC8(&pbc, 1, seq_params.bitdepth > 8);
    FUNC8(&pbc, 1, seq_params.bitdepth == 12);
    FUNC8(&pbc, 1, seq_params.monochrome);
    FUNC8(&pbc, 1, seq_params.chroma_subsampling_x);
    FUNC8(&pbc, 1, seq_params.chroma_subsampling_y);
    FUNC8(&pbc, 2, seq_params.chroma_sample_position);
    FUNC8(&pbc, 8, 0); // padding
    FUNC4(&pbc);

    FUNC3(pb, header, sizeof(header));
    FUNC3(pb, seq, seq_size);

    meta_size = FUNC1(meta_pb, &meta);
    if (meta_size)
        FUNC3(pb, meta, meta_size);

fail:
    if (!seq)
        FUNC1(seq_pb, &seq);
    if (!meta)
        FUNC1(meta_pb, &meta);
    FUNC0(seq);
    FUNC0(meta);

    return ret;
}