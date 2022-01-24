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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  AVDES ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  cbc_key ; 
 int /*<<< orphan*/ ** large_buffer ; 
 int /*<<< orphan*/ * tmp ; 

__attribute__((used)) static int FUNC4(int cbc, int decrypt)
{
    AVDES d;
    int delay = cbc && !decrypt ? 2 : 1;
    uint64_t res;
    FUNC1(large_buffer[0], 0x4e6f772069732074ULL);
    FUNC1(large_buffer[1], 0x1234567890abcdefULL);
    FUNC1(tmp,             0x1234567890abcdefULL);
    FUNC3(&d, cbc_key, 192, decrypt);
    FUNC2(&d, large_buffer[delay], large_buffer[0], 10000, cbc ? tmp : NULL, decrypt);
    res = FUNC0(large_buffer[9999 + delay]);
    if (cbc) {
        if (decrypt)
            return res == 0xc5cecf63ecec514cULL;
        else
            return res == 0xcb191f85d1ed8439ULL;
    } else {
        if (decrypt)
            return res == 0x8325397644091a0aULL;
        else
            return res == 0xdd17e8b8b437d232ULL;
    }
}