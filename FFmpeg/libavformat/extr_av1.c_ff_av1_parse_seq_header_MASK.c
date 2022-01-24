#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  AV1SequenceParameters ;

/* Variables and functions */
#define  AV1_OBU_SEQUENCE_HEADER 128 
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC2(AV1SequenceParameters *seq, const uint8_t *buf, int size)
{
    int64_t obu_size;
    int start_pos, type, temporal_id, spatial_id;

    if (size <= 0)
        return AVERROR_INVALIDDATA;

    while (size > 0) {
        int len = FUNC0(buf, size, &obu_size, &start_pos,
                                   &type, &temporal_id, &spatial_id);
        if (len < 0)
            return len;

        switch (type) {
        case AV1_OBU_SEQUENCE_HEADER:
            if (!obu_size)
                return AVERROR_INVALIDDATA;

            return FUNC1(seq, buf + start_pos, obu_size);
        default:
            break;
        }
        size -= len;
        buf  += len;
    }

    return AVERROR_INVALIDDATA;
}