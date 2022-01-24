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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC2(RangeCoder *c, uint8_t *state, int v, int log2){
    int i;
    int r= log2>=0 ? 1<<log2 : 1;

    FUNC0(v>=0);
    FUNC0(log2>=-4);

    while(v >= r){
        FUNC1(c, state+4+log2, 1);
        v -= r;
        log2++;
        if(log2>0) r+=r;
    }
    FUNC1(c, state+4+log2, 0);

    for(i=log2-1; i>=0; i--){
        FUNC1(c, state+31-i, (v>>i)&1);
    }
}