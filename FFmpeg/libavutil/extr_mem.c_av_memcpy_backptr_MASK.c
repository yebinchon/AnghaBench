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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int) ; 

void FUNC7(uint8_t *dst, int back, int cnt)
{
    const uint8_t *src = &dst[-back];
    if (!back)
        return;

    if (back == 1) {
        FUNC6(dst, *src, cnt);
    } else if (back == 2) {
        FUNC2(dst, cnt);
    } else if (back == 3) {
        FUNC3(dst, cnt);
    } else if (back == 4) {
        FUNC4(dst, cnt);
    } else {
        if (cnt >= 16) {
            int blocklen = back;
            while (cnt > blocklen) {
                FUNC5(dst, src, blocklen);
                dst       += blocklen;
                cnt       -= blocklen;
                blocklen <<= 1;
            }
            FUNC5(dst, src, cnt);
            return;
        }
        if (cnt >= 8) {
            FUNC1(dst,     src);
            FUNC1(dst + 4, src + 4);
            src += 8;
            dst += 8;
            cnt -= 8;
        }
        if (cnt >= 4) {
            FUNC1(dst, src);
            src += 4;
            dst += 4;
            cnt -= 4;
        }
        if (cnt >= 2) {
            FUNC0(dst, src);
            src += 2;
            dst += 2;
            cnt -= 2;
        }
        if (cnt)
            *dst = *src;
    }
}