#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* midbuf; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ InterplayACMContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(InterplayACMContext *s)
{
    GetBitContext *gb = &s->gb;
    int pwr, count, val, i, x, ret;

    pwr = FUNC1(gb, 4);
    val = FUNC1(gb, 16);

    count = 1 << pwr;

    for (i = 0, x = 0; i < count; i++) {
        s->midbuf[i] = x;
        x += val;
    }

    for (i = 1, x = -val; i <= count; i++) {
        s->midbuf[-i] = x;
        x -= (unsigned)val;
    }

    ret = FUNC0(s);
    if (ret < 0)
        return ret;

    FUNC2(s);

    return 0;
}