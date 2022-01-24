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
typedef  unsigned char uint8_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(GetByteContext *gb,
                           uint8_t *dst,
                           unsigned int bytes_per_scanline,
                           int compressed)
{
    unsigned int i = 0;
    unsigned char run, value;

    if (FUNC2(gb) < 1)
        return AVERROR_INVALIDDATA;

    if (compressed) {
        while (i < bytes_per_scanline && FUNC2(gb)>0) {
            run   = 1;
            value = FUNC1(gb);
            if (value >= 0xc0 && FUNC2(gb)>0) {
                run   = value & 0x3f;
                value = FUNC1(gb);
            }
            while (i < bytes_per_scanline && run--)
                dst[i++] = value;
        }
    } else {
        FUNC0(gb, dst, bytes_per_scanline);
    }
    return 0;
}