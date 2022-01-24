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
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int FUNC1 (int const*) ; 
 int FUNC2 (int const*) ; 
 int FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int*,int const*,int) ; 

int FUNC7(const uint8_t *in, uint8_t **buf, int *size)
{
    uint16_t sps_size, pps_size;
    uint8_t *out;
    int out_size;

    *buf = NULL;
    if (*size >= 4 && (FUNC3(in) == 0x00000001 || FUNC2(in) == 0x000001))
        return 0;
    if (*size < 11 || in[0] != 1)
        return AVERROR_INVALIDDATA;

    sps_size = FUNC1(&in[6]);
    if (11 + sps_size > *size)
        return AVERROR_INVALIDDATA;
    pps_size = FUNC1(&in[9 + sps_size]);
    if (11 + sps_size + pps_size > *size)
        return AVERROR_INVALIDDATA;
    out_size = 8 + sps_size + pps_size;
    out = FUNC5(out_size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!out)
        return FUNC0(ENOMEM);
    FUNC4(&out[0], 0x00000001);
    FUNC6(out + 4, &in[8], sps_size);
    FUNC4(&out[4 + sps_size], 0x00000001);
    FUNC6(out + 8 + sps_size, &in[11 + sps_size], pps_size);
    *buf = out;
    *size = out_size;
    return 0;
}