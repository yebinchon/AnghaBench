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
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx,
                            const uint8_t *src, int src_size,
                            int slice_size, int off)
{
    int cur_slice_size;

    if (slice_size > src_size - off) {
        FUNC1(avctx, AV_LOG_ERROR,
               "invalid slice size %d (only %d bytes left)\n",
               slice_size, src_size - off);
        return AVERROR_INVALIDDATA;
    }
    if (slice_size <= 16) {
        FUNC1(avctx, AV_LOG_ERROR, "invalid slice size %d\n",
               slice_size);
        return AVERROR_INVALIDDATA;
    }

    cur_slice_size = FUNC0(src + off);
    if (cur_slice_size != slice_size - 16) {
        FUNC1(avctx, AV_LOG_ERROR,
               "Slice sizes mismatch: got %d instead of %d\n",
               cur_slice_size, slice_size - 16);
    }

    return 0;
}