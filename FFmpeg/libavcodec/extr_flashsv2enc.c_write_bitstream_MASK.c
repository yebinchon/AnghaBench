#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {double total_bits; } ;
typedef  TYPE_1__ FlashSV2Context ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(FlashSV2Context * s, const uint8_t * src, int stride,
                           uint8_t * buf, int buf_size, int keyframe)
{
    int buf_pos, res;

    res = FUNC1(s, src, stride, keyframe);
    if (res)
        return res;
    res = FUNC0(s, keyframe);
    if (res)
        return res;

    res = FUNC3(s, buf, buf_size);
    if (res < 0) {
        return res;
    } else {
        buf_pos = res;
    }
    res = FUNC2(s, buf + buf_pos, buf_size - buf_pos);
    if (res < 0)
        return res;
    buf_pos += res;
#ifndef FLASHSV2_DUMB
    s->total_bits += ((double) buf_pos) * 8.0;
#endif

    return buf_pos;
}