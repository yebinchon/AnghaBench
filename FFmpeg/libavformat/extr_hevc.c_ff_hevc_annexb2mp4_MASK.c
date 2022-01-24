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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
#define  HEVC_NAL_PPS 130 
#define  HEVC_NAL_SPS 129 
#define  HEVC_NAL_VPS 128 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC6 (int const*,int**,int*) ; 

int FUNC7(AVIOContext *pb, const uint8_t *buf_in,
                       int size, int filter_ps, int *ps_count)
{
    int num_ps = 0, ret = 0;
    uint8_t *buf, *end, *start = NULL;

    if (!filter_ps) {
        ret = FUNC5(pb, buf_in, size);
        goto end;
    }

    ret = FUNC6(buf_in, &start, &size);
    if (ret < 0)
        goto end;

    ret = 0;
    buf = start;
    end = start + size;

    while (end - buf > 4) {
        uint32_t len = FUNC1(FUNC0(buf), end - buf - 4);
        uint8_t type = (buf[4] >> 1) & 0x3f;

        buf += 4;

        switch (type) {
        case HEVC_NAL_VPS:
        case HEVC_NAL_SPS:
        case HEVC_NAL_PPS:
            num_ps++;
            break;
        default:
            ret += 4 + len;
            FUNC3(pb, len);
            FUNC4(pb, buf, len);
            break;
        }

        buf += len;
    }

end:
    FUNC2(start);
    if (ps_count)
        *ps_count = num_ps;
    return ret;
}