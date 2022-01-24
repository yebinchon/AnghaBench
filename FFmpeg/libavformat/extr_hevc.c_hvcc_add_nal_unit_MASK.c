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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
#define  HEVC_NAL_PPS 132 
#define  HEVC_NAL_SEI_PREFIX 131 
#define  HEVC_NAL_SEI_SUFFIX 130 
#define  HEVC_NAL_SPS 129 
#define  HEVC_NAL_VPS 128 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC9(uint8_t *nal_buf, uint32_t nal_size,
                             int ps_array_completeness,
                             HEVCDecoderConfigurationRecord *hvcc)
{
    int ret = 0;
    GetBitContext gbc;
    uint8_t nal_type;
    uint8_t *rbsp_buf;
    uint32_t rbsp_size;

    rbsp_buf = FUNC2(nal_buf, nal_size, &rbsp_size, 2);
    if (!rbsp_buf) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    ret = FUNC7(&gbc, rbsp_buf, rbsp_size);
    if (ret < 0)
        goto end;

    FUNC8(&gbc, &nal_type);

    /*
     * Note: only 'declarative' SEI messages are allowed in
     * hvcC. Perhaps the SEI playload type should be checked
     * and non-declarative SEI messages discarded?
     */
    switch (nal_type) {
    case HEVC_NAL_VPS:
    case HEVC_NAL_SPS:
    case HEVC_NAL_PPS:
    case HEVC_NAL_SEI_PREFIX:
    case HEVC_NAL_SEI_SUFFIX:
        ret = FUNC3(nal_buf, nal_size, nal_type,
                                      ps_array_completeness, hvcc);
        if (ret < 0)
            goto end;
        else if (nal_type == HEVC_NAL_VPS)
            ret = FUNC6(&gbc, hvcc);
        else if (nal_type == HEVC_NAL_SPS)
            ret = FUNC5(&gbc, hvcc);
        else if (nal_type == HEVC_NAL_PPS)
            ret = FUNC4(&gbc, hvcc);
        if (ret < 0)
            goto end;
        break;
    default:
        ret = AVERROR_INVALIDDATA;
        goto end;
    }

end:
    FUNC1(rbsp_buf);
    return ret;
}