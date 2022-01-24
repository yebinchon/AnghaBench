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
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int FUNC2 (int,int) ; 
 int H264_MAX_PPS_COUNT ; 
 int H264_MAX_SPS_COUNT ; 
 int UINT16_MAX ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int**) ; 
 int FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC9 (int const*,int**,int*) ; 

int FUNC10(AVIOContext *pb, const uint8_t *data, int len)
{
    AVIOContext *sps_pb = NULL, *pps_pb = NULL;
    uint8_t *buf = NULL, *end, *start = NULL;
    uint8_t *sps = NULL, *pps = NULL;
    uint32_t sps_size = 0, pps_size = 0;
    int ret, nb_sps = 0, nb_pps = 0;

    if (len <= 6)
        return AVERROR_INVALIDDATA;

    /* check for H.264 start code */
    if (FUNC1(data) != 0x00000001 &&
        FUNC0(data) != 0x000001) {
        FUNC8(pb, data, len);
        return 0;
    }

    ret = FUNC9(data, &buf, &len);
    if (ret < 0)
        return ret;
    start = buf;
    end = buf + len;

    ret = FUNC5(&sps_pb);
    if (ret < 0)
        goto fail;
    ret = FUNC5(&pps_pb);
    if (ret < 0)
        goto fail;

    /* look for sps and pps */
    while (end - buf > 4) {
        uint32_t size;
        uint8_t nal_type;
        size = FUNC2(FUNC1(buf), end - buf - 4);
        buf += 4;
        nal_type = buf[0] & 0x1f;

        if (nal_type == 7) { /* SPS */
            nb_sps++;
            if (size > UINT16_MAX || nb_sps >= H264_MAX_SPS_COUNT) {
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            FUNC7(sps_pb, size);
            FUNC8(sps_pb, buf, size);
        } else if (nal_type == 8) { /* PPS */
            nb_pps++;
            if (size > UINT16_MAX || nb_pps >= H264_MAX_PPS_COUNT) {
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            FUNC7(pps_pb, size);
            FUNC8(pps_pb, buf, size);
        }

        buf += size;
    }
    sps_size = FUNC4(sps_pb, &sps);
    pps_size = FUNC4(pps_pb, &pps);

    if (sps_size < 6 || !pps_size) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    FUNC6(pb, 1); /* version */
    FUNC6(pb, sps[3]); /* profile */
    FUNC6(pb, sps[4]); /* profile compat */
    FUNC6(pb, sps[5]); /* level */
    FUNC6(pb, 0xff); /* 6 bits reserved (111111) + 2 bits nal size length - 1 (11) */
    FUNC6(pb, 0xe0 | nb_sps); /* 3 bits reserved (111) + 5 bits number of sps */

    FUNC8(pb, sps, sps_size);
    FUNC6(pb, nb_pps); /* number of pps */
    FUNC8(pb, pps, pps_size);

fail:
    if (!sps)
        FUNC4(sps_pb, &sps);
    if (!pps)
        FUNC4(pps_pb, &pps);
    FUNC3(sps);
    FUNC3(pps);
    FUNC3(start);

    return ret;
}