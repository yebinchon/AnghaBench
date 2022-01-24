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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static inline int FUNC4(uint8_t **dst, const uint8_t *dst_end,
                     GetByteContext *gb,
                     int pixel, int count,
                     int *x, int width, int linesize)
{
    int remaining = width - *x;
    while(count > 0) {
        int striplen = FUNC0(count, remaining);
        if (gb) {
            if (FUNC2(gb) < striplen)
                goto exhausted;
            FUNC1(gb, *dst, striplen);
        } else if (pixel >= 0)
            FUNC3(*dst, pixel, striplen);
        *dst      += striplen;
        remaining -= striplen;
        count     -= striplen;
        if (remaining <= 0) {
            *dst      += linesize - width;
            remaining  = width;
        }
        if (linesize > 0) {
            if (*dst >= dst_end) goto exhausted;
        } else {
            if (*dst <= dst_end) goto exhausted;
        }
    }
    *x = width - remaining;
    return 0;

exhausted:
    *x = width - remaining;
    return 1;
}