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
typedef  int /*<<< orphan*/  Jpeg2000EncoderContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC1(Jpeg2000EncoderContext *s, int n)
{
    if (n == 1)
        FUNC0(s, 0, 1);
    else if (n == 2)
        FUNC0(s, 2, 2);
    else if (n <= 5)
        FUNC0(s, 0xc | (n-3), 4);
    else if (n <= 36)
        FUNC0(s, 0x1e0 | (n-6), 9);
    else
        FUNC0(s, 0xff80 | (n-37), 16);
}