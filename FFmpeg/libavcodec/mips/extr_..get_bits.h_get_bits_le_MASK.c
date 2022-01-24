#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int bits_left; } ;
typedef  TYPE_1__ GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 unsigned int FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  re ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static inline unsigned int FUNC8(GetBitContext *s, int n)
{
#if CACHED_BITSTREAM_READER
    av_assert2(n>0 && n<=32);
    if (n > s->bits_left) {
        refill_32(s, 1);
        if (s->bits_left < 32)
            s->bits_left = n;
    }

    return get_val(s, n, 1);
#else
    register int tmp;
    FUNC2(re, s);
    FUNC5(n>0 && n<=25);
    FUNC4(re, s);
    tmp = FUNC3(re, s, n);
    FUNC1(re, s, n);
    FUNC0(re, s);
    return tmp;
#endif
}