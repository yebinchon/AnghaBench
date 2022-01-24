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
struct AVTEA {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct AVTEA*,int*,int const*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(struct AVTEA *ctx, uint8_t *dst, const uint8_t *src,
                     const uint8_t *ref, int len, uint8_t *iv, int dir,
                     const char *test)
{
    FUNC0(ctx, dst, src, len, iv, dir);
    if (FUNC2(dst, ref, 8*len)) {
        int i;
        FUNC3("%s failed\ngot      ", test);
        for (i = 0; i < 8*len; i++)
            FUNC3("%02x ", dst[i]);
        FUNC3("\nexpected ");
        for (i = 0; i < 8*len; i++)
            FUNC3("%02x ", ref[i]);
        FUNC3("\n");
        FUNC1(1);
    }
}