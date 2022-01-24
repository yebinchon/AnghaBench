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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  RangeCoder ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(RangeCoder *c, uint8_t *state, int is_signed){
    if(FUNC1(c, state+0))
        return 0;
    else{
        int i, e;
        unsigned a;
        e= 0;
        while(FUNC1(c, state+1 + FUNC0(e,9))){ //1..10
            e++;
            if (e > 31)
                return AVERROR_INVALIDDATA;
        }

        a= 1;
        for(i=e-1; i>=0; i--){
            a += a + FUNC1(c, state+22 + FUNC0(i,9)); //22..31
        }

        e= -(is_signed && FUNC1(c, state+11 + FUNC0(e,10))); //11..21
        return (a^e)-e;
    }
}