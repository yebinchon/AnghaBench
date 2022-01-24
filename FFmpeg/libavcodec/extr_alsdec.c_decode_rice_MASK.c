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
typedef  unsigned int int32_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int32_t FUNC4(GetBitContext *gb, unsigned int k)
{
    int max = FUNC1(gb) - k;
    unsigned q = FUNC3(gb, 0, max);
    int r   = k ? FUNC0(gb) : !(q & 1);

    if (k > 1) {
        q <<= (k - 1);
        q  += FUNC2(gb, k - 1);
    } else if (!k) {
        q >>= 1;
    }
    return r ? q : ~q;
}