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
typedef  char uint8_t ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (unsigned int) ; 

int FUNC3(uint8_t *out, const char *in_str, int out_size)
{
    uint8_t *dst = out;
    uint8_t *end = out + out_size;
    // no sign extension
    const uint8_t *in = in_str;
    unsigned bits = 0xff;
    unsigned v;

    while (end - dst > 3) {
        FUNC1(0);
        FUNC1(1);
        FUNC1(2);
        FUNC1(3);
        // Using AV_WB32 directly confuses compiler
        v = FUNC2(v << 8);
        FUNC0(dst, v);
        dst += 3;
        in += 4;
    }
    if (end - dst) {
        FUNC1(0);
        FUNC1(1);
        FUNC1(2);
        FUNC1(3);
        *dst++ = v >> 16;
        if (end - dst)
            *dst++ = v >> 8;
        if (end - dst)
            *dst++ = v;
        in += 4;
    }
    while (1) {
        FUNC1(0);
        in++;
        FUNC1(0);
        in++;
        FUNC1(0);
        in++;
        FUNC1(0);
        in++;
    }

out3:
    *dst++ = v >> 10;
    v <<= 2;
out2:
    *dst++ = v >> 4;
out1:
out0:
    return bits & 1 ? AVERROR_INVALIDDATA : dst - out;
}