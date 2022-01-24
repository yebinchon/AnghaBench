#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  unsigned int uint64_t ;
typedef  unsigned int int64_t ;
struct TYPE_9__ {int nb_streams; int /*<<< orphan*/ * pb; int /*<<< orphan*/ * oformat; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int edit_units_count; unsigned int* body_partition_offset; int body_partitions_count; unsigned int footer_partition_offset; unsigned int body_offset; int /*<<< orphan*/  essence_container_count; scalar_t__ edit_unit_byte_count; } ;
typedef  TYPE_1__ MXFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 long long FUNC0 (int /*<<< orphan*/ ) ; 
 int KAG_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC1 (unsigned int**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* body_partition_key ; 
 int /*<<< orphan*/  ff_mxf_opatom_muxer ; 
 int /*<<< orphan*/  const* footer_partition_key ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  const* op1a_ul ; 
 int /*<<< orphan*/  const* opatom_ul ; 

__attribute__((used)) static int FUNC16(AVFormatContext *s, int bodysid,
                                int indexsid,
                                const uint8_t *key, int write_metadata)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t header_byte_count_offset;
    unsigned index_byte_count = 0;
    uint64_t partition_offset = FUNC4(pb);
    int err;

    if (!mxf->edit_unit_byte_count && mxf->edit_units_count)
        index_byte_count = 85 + 12+(s->nb_streams+1)*6 +
            12+mxf->edit_units_count*15;
    else if (mxf->edit_unit_byte_count && indexsid)
        index_byte_count = 80;

    if (index_byte_count) {
        index_byte_count += 16 + 4; // add encoded ber4 length
        index_byte_count += FUNC10(index_byte_count);
    }

    if (key && !FUNC11(key, body_partition_key, 16)) {
        if ((err = FUNC1(&mxf->body_partition_offset, mxf->body_partitions_count + 1,
                                     sizeof(*mxf->body_partition_offset))) < 0) {
            mxf->body_partitions_count = 0;
            return err;
        }
        mxf->body_partition_offset[mxf->body_partitions_count++] = partition_offset;
    }

    // write klv
    if (key)
        FUNC8(pb, key, 16);
    else
        FUNC8(pb, body_partition_key, 16);

    FUNC9(pb, 88 + 16LL * FUNC0(mxf->essence_container_count));

    // write partition value
    FUNC5(pb, 1); // majorVersion
    FUNC5(pb, 3); // minorVersion
    FUNC6(pb, KAG_SIZE); // KAGSize

    FUNC7(pb, partition_offset); // ThisPartition

    if (key && !FUNC11(key, body_partition_key, 16) && mxf->body_partitions_count > 1)
        FUNC7(pb, mxf->body_partition_offset[mxf->body_partitions_count-2]); // PreviousPartition
    else if (key && !FUNC11(key, footer_partition_key, 16) && mxf->body_partitions_count)
        FUNC7(pb, mxf->body_partition_offset[mxf->body_partitions_count-1]); // PreviousPartition
    else
        FUNC7(pb, 0);

    FUNC7(pb, mxf->footer_partition_offset); // footerPartition

    // set offset
    header_byte_count_offset = FUNC4(pb);
    FUNC7(pb, 0); // headerByteCount, update later

    // indexTable
    FUNC7(pb, index_byte_count); // indexByteCount
    FUNC6(pb, index_byte_count ? indexsid : 0); // indexSID

    // BodyOffset
    if (bodysid && mxf->edit_units_count && mxf->body_partitions_count && s->oformat != &ff_mxf_opatom_muxer)
        FUNC7(pb, mxf->body_offset);
    else
        FUNC7(pb, 0);

    FUNC6(pb, bodysid); // bodySID

    // operational pattern
    if (s->oformat == &ff_mxf_opatom_muxer)
        FUNC8(pb, opatom_ul, 16);
    else
        FUNC8(pb, op1a_ul, 16);

    // essence container
    FUNC12(s);

    if (write_metadata) {
        // mark the start of the headermetadata and calculate metadata size
        int64_t pos, start;
        unsigned header_byte_count;

        FUNC14(s);
        start = FUNC4(s->pb);
        FUNC15(s);
        FUNC14(s);
        FUNC13(s);
        pos = FUNC4(s->pb);
        header_byte_count = pos - start + FUNC10(pos);

        // update header_byte_count
        FUNC3(pb, header_byte_count_offset, SEEK_SET);
        FUNC7(pb, header_byte_count);
        FUNC3(pb, pos, SEEK_SET);
    }

    if(key)
        FUNC2(pb);

    return 0;
}