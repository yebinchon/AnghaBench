#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int bits_left; } ;
typedef  TYPE_1__ GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  re ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 unsigned int FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static inline unsigned int FUNC6(GetBitContext *s, int n)
{
    register unsigned int tmp;
#if CACHED_BITSTREAM_READER
    if (n > s->bits_left)
#ifdef BITSTREAM_READER_LE
        refill_32(s, 1);
#else
        refill_32(s, 0);
#endif

    tmp = show_val(s, n);
#else
    FUNC0(re, s);
    FUNC3(n>0 && n<=25);
    FUNC2(re, s);
    tmp = FUNC1(re, s, n);
#endif
    return tmp;
}