#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int KAG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  klv_fill_key ; 
 unsigned int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(AVFormatContext *s)
{
    unsigned pad = FUNC5(FUNC1(s->pb));
    if (pad) {
        FUNC2(s->pb, klv_fill_key, 16);
        pad -= 16 + 4;
        FUNC4(s->pb, pad);
        FUNC3(s->pb, 0, pad);
        FUNC0(!(FUNC1(s->pb) & (KAG_SIZE-1)));
    }
}