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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  HEVCDecoderConfigurationRecord ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
#define  HEVC_NAL_PPS 132 
#define  HEVC_NAL_SEI_PREFIX 131 
#define  HEVC_NAL_SEI_SUFFIX 130 
#define  HEVC_NAL_SPS 129 
#define  HEVC_NAL_VPS 128 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC5 (int const*,int**,int*) ; 
 int FUNC6 (int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC10(AVIOContext *pb, const uint8_t *data,
                       int size, int ps_array_completeness)
{
    int ret = 0;
    uint8_t *buf, *end, *start = NULL;
    HEVCDecoderConfigurationRecord hvcc;

    FUNC8(&hvcc);

    if (size < 6) {
        /* We can't write a valid hvcC from the provided data */
        ret = AVERROR_INVALIDDATA;
        goto end;
    } else if (*data == 1) {
        /* Data is already hvcC-formatted */
        FUNC4(pb, data, size);
        goto end;
    } else if (!(FUNC0(data) == 1 || FUNC1(data) == 1)) {
        /* Not a valid Annex B start code prefix */
        ret = AVERROR_INVALIDDATA;
        goto end;
    }

    ret = FUNC5(data, &start, &size);
    if (ret < 0)
        goto end;

    buf = start;
    end = start + size;

    while (end - buf > 4) {
        uint32_t len = FUNC2(FUNC1(buf), end - buf - 4);
        uint8_t type = (buf[4] >> 1) & 0x3f;

        buf += 4;

        switch (type) {
        case HEVC_NAL_VPS:
        case HEVC_NAL_SPS:
        case HEVC_NAL_PPS:
        case HEVC_NAL_SEI_PREFIX:
        case HEVC_NAL_SEI_SUFFIX:
            ret = FUNC6(buf, len, ps_array_completeness, &hvcc);
            if (ret < 0)
                goto end;
            break;
        default:
            break;
        }

        buf += len;
    }

    ret = FUNC9(pb, &hvcc);

end:
    FUNC7(&hvcc);
    FUNC3(start);
    return ret;
}