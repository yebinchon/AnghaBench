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
typedef  int /*<<< orphan*/  H264ParamSets ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (int const*,int,int /*<<< orphan*/ *,int,void*) ; 

int FUNC4(const uint8_t *data, int size, H264ParamSets *ps,
                             int *is_avc, int *nal_length_size,
                             int err_recognition, void *logctx)
{
    int ret;

    if (!data || size <= 0)
        return -1;

    if (data[0] == 1) {
        int i, cnt, nalsize;
        const uint8_t *p = data;

        *is_avc = 1;

        if (size < 7) {
            FUNC1(logctx, AV_LOG_ERROR, "avcC %d too short\n", size);
            return AVERROR_INVALIDDATA;
        }

        // Decode sps from avcC
        cnt = *(p + 5) & 0x1f; // Number of sps
        p  += 6;
        for (i = 0; i < cnt; i++) {
            nalsize = FUNC0(p) + 2;
            if (nalsize > size - (p - data))
                return AVERROR_INVALIDDATA;
            ret = FUNC3(p, nalsize, ps, err_recognition, logctx);
            if (ret < 0) {
                FUNC1(logctx, AV_LOG_ERROR,
                       "Decoding sps %d from avcC failed\n", i);
                return ret;
            }
            p += nalsize;
        }
        // Decode pps from avcC
        cnt = *(p++); // Number of pps
        for (i = 0; i < cnt; i++) {
            nalsize = FUNC0(p) + 2;
            if (nalsize > size - (p - data))
                return AVERROR_INVALIDDATA;
            ret = FUNC3(p, nalsize, ps, err_recognition, logctx);
            if (ret < 0) {
                FUNC1(logctx, AV_LOG_ERROR,
                       "Decoding pps %d from avcC failed\n", i);
                return ret;
            }
            p += nalsize;
        }
        // Store right nal length size that will be used to parse all other nals
        *nal_length_size = (data[4] & 0x03) + 1;
    } else {
        *is_avc = 0;
        ret = FUNC2(data, size, ps, 0, logctx);
        if (ret < 0)
            return ret;
    }
    return size;
}