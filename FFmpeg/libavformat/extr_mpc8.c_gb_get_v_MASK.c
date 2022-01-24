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
typedef  int uint64_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int64_t FUNC2(GetBitContext *gb)
{
    uint64_t v = 0;
    int bits = 0;
    while(FUNC1(gb) && bits < 64-7){
        v <<= 7;
        v |= FUNC0(gb, 7);
        bits += 7;
    }
    v <<= 7;
    v |= FUNC0(gb, 7);

    return v;
}