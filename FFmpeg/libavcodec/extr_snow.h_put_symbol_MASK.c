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
 int FUNC0 (int) ; 
 int FUNC1 (int const,int) ; 
 int FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static inline void FUNC4(RangeCoder *c, uint8_t *state, int v, int is_signed){
    int i;

    if(v){
        const int a= FUNC0(v);
        const int e= FUNC2(a);
        const int el= FUNC1(e, 10);
        FUNC3(c, state+0, 0);

        for(i=0; i<el; i++){
            FUNC3(c, state+1+i, 1);  //1..10
        }
        for(; i<e; i++){
            FUNC3(c, state+1+9, 1);  //1..10
        }
        FUNC3(c, state+1+FUNC1(i,9), 0);

        for(i=e-1; i>=el; i--){
            FUNC3(c, state+22+9, (a>>i)&1); //22..31
        }
        for(; i>=0; i--){
            FUNC3(c, state+22+i, (a>>i)&1); //22..31
        }

        if(is_signed)
            FUNC3(c, state+11 + el, v < 0); //11..21
    }else{
        FUNC3(c, state+0, 1);
    }
}