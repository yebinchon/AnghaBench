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
typedef  int /*<<< orphan*/  Jpeg2000DecoderContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(Jpeg2000DecoderContext *s)
{
    int num;
    if (!FUNC0(s, 1))
        return 1;
    if (!FUNC0(s, 1))
        return 2;
    if ((num = FUNC0(s, 2)) != 3)
        return num < 0 ? num : 3 + num;
    if ((num = FUNC0(s, 5)) != 31)
        return num < 0 ? num : 6 + num;
    num = FUNC0(s, 7);
    return num < 0 ? num : 37 + num;
}