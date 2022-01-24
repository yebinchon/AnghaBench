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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int,int,int,int /*<<< orphan*/  const**,int) ; 

__attribute__((used)) static void FUNC1(uint8_t *dst, int dst_linesize, const uint8_t *src, int src_linesize,
                  int w, int h, int radius, int power, uint8_t *temp[2], int pixsize)
{
    int y;

    if (radius == 0 && dst == src)
        return;

    for (y = 0; y < h; y++)
        FUNC0(dst + y*dst_linesize, pixsize, src + y*src_linesize, pixsize,
                   w, radius, power, temp, pixsize);
}