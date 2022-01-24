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
typedef  int /*<<< orphan*/  HEVCSEI ;
typedef  int /*<<< orphan*/  HEVCParamSets ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int HEVC_NAL_SEI_PREFIX ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(GetBitContext *gb, void *logctx, HEVCSEI *s,
                                  const HEVCParamSets *ps, int nal_unit_type)
{
    int payload_type = 0;
    int payload_size = 0;
    int byte = 0xFF;
    FUNC0(logctx, AV_LOG_DEBUG, "Decoding SEI\n");

    while (byte == 0xFF) {
        if (FUNC4(gb) < 16 || payload_type > INT_MAX - 255)
            return AVERROR_INVALIDDATA;
        byte          = FUNC3(gb, 8);
        payload_type += byte;
    }
    byte = 0xFF;
    while (byte == 0xFF) {
        if (FUNC4(gb) < 8 + 8LL*payload_size)
            return AVERROR_INVALIDDATA;
        byte          = FUNC3(gb, 8);
        payload_size += byte;
    }
    if (nal_unit_type == HEVC_NAL_SEI_PREFIX) {
        return FUNC1(gb, logctx, s, ps, payload_type, payload_size);
    } else { /* nal_unit_type == NAL_SEI_SUFFIX */
        return FUNC2(gb, logctx, s, payload_type, payload_size);
    }
}