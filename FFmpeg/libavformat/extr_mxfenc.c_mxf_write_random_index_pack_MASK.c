#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/ * oformat; int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {long long body_partitions_count; int /*<<< orphan*/  footer_partition_offset; int /*<<< orphan*/ * body_partition_offset; scalar_t__ edit_unit_byte_count; } ;
typedef  TYPE_1__ MXFContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ff_mxf_opatom_muxer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  random_index_pack_key ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    uint64_t pos = FUNC0(pb);
    int i;

    FUNC3(pb, random_index_pack_key, 16);
    FUNC4(pb, 28 + 12LL*mxf->body_partitions_count);

    if (mxf->edit_unit_byte_count && s->oformat != &ff_mxf_opatom_muxer)
        FUNC1(pb, 1); // BodySID of header partition
    else
        FUNC1(pb, 0);
    FUNC2(pb, 0); // offset of header partition

    for (i = 0; i < mxf->body_partitions_count; i++) {
        FUNC1(pb, 1); // BodySID
        FUNC2(pb, mxf->body_partition_offset[i]);
    }

    FUNC1(pb, 0); // BodySID of footer partition
    FUNC2(pb, mxf->footer_partition_offset);

    FUNC1(pb, FUNC0(pb) - pos + 4);
}