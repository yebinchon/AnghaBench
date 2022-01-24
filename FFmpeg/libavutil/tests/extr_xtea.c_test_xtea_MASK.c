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
typedef  int /*<<< orphan*/  AVXTEA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(AVXTEA *ctx, uint8_t *dst, const uint8_t *src,
                      const uint8_t *ref, int len, uint8_t *iv, int dir,
                      const char *test,
                      void (*crypt)(AVXTEA *, uint8_t *, const uint8_t *, int, uint8_t *, int))
{
    crypt(ctx, dst, src, len, iv, dir);
    if (FUNC1(dst, ref, 8*len)) {
        int i;
        FUNC2("%s failed\ngot      ", test);
        for (i = 0; i < 8*len; i++)
            FUNC2("%02x ", dst[i]);
        FUNC2("\nexpected ");
        for (i = 0; i < 8*len; i++)
            FUNC2("%02x ", ref[i]);
        FUNC2("\n");
        FUNC0(1);
    }
}