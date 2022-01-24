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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int objecttype; int sample_rate_index; int channel_conf; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ ADTSContext ;

/* Variables and functions */
 scalar_t__ ADTS_HEADER_SIZE ; 
 unsigned int ADTS_MAX_FRAME_BYTES ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC4(ADTSContext *ctx,
                                   uint8_t *buf, int size, int pce_size)
{
    PutBitContext pb;

    unsigned full_frame_size = (unsigned)ADTS_HEADER_SIZE + size + pce_size;
    if (full_frame_size > ADTS_MAX_FRAME_BYTES) {
        FUNC0(NULL, AV_LOG_ERROR, "ADTS frame size too large: %u (max %d)\n",
               full_frame_size, ADTS_MAX_FRAME_BYTES);
        return AVERROR_INVALIDDATA;
    }

    FUNC2(&pb, buf, ADTS_HEADER_SIZE);

    /* adts_fixed_header */
    FUNC3(&pb, 12, 0xfff);   /* syncword */
    FUNC3(&pb, 1, 0);        /* ID */
    FUNC3(&pb, 2, 0);        /* layer */
    FUNC3(&pb, 1, 1);        /* protection_absent */
    FUNC3(&pb, 2, ctx->objecttype); /* profile_objecttype */
    FUNC3(&pb, 4, ctx->sample_rate_index);
    FUNC3(&pb, 1, 0);        /* private_bit */
    FUNC3(&pb, 3, ctx->channel_conf); /* channel_configuration */
    FUNC3(&pb, 1, 0);        /* original_copy */
    FUNC3(&pb, 1, 0);        /* home */

    /* adts_variable_header */
    FUNC3(&pb, 1, 0);        /* copyright_identification_bit */
    FUNC3(&pb, 1, 0);        /* copyright_identification_start */
    FUNC3(&pb, 13, full_frame_size); /* aac_frame_length */
    FUNC3(&pb, 11, 0x7ff);   /* adts_buffer_fullness */
    FUNC3(&pb, 2, 0);        /* number_of_raw_data_blocks_in_frame */

    FUNC1(&pb);

    return 0;
}