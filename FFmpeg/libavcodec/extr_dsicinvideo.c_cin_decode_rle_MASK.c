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

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const unsigned char *src, int src_size,
                           unsigned char *dst, int dst_size)
{
    int len, code;
    unsigned char *dst_end       = dst + dst_size;
    const unsigned char *src_end = src + src_size;

    while (src + 1 < src_end && dst < dst_end) {
        code = *src++;
        if (code & 0x80) {
            len = code - 0x7F;
            FUNC4(dst, *src++, FUNC0(len, dst_end - dst));
        } else {
            len = code + 1;
            if (len > src_end-src) {
                FUNC2(NULL, AV_LOG_ERROR, "RLE overread\n");
                return AVERROR_INVALIDDATA;
            }
            FUNC3(dst, src, FUNC1(len, dst_end - dst, src_end - src));
            src += len;
        }
        dst += len;
    }

    if (dst_end - dst > dst_size - dst_size/10)
        return AVERROR_INVALIDDATA;

    return 0;
}