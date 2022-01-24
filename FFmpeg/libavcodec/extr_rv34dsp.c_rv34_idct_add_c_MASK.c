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
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(uint8_t *dst, ptrdiff_t stride, int16_t *block){
    int      temp[16];
    int      i;

    FUNC2(temp, block);
    FUNC1(block, 0, 16*sizeof(int16_t));

    for(i = 0; i < 4; i++){
        const int z0 = 13*(temp[4*0+i] +    temp[4*2+i]) + 0x200;
        const int z1 = 13*(temp[4*0+i] -    temp[4*2+i]) + 0x200;
        const int z2 =  7* temp[4*1+i] - 17*temp[4*3+i];
        const int z3 = 17* temp[4*1+i] +  7*temp[4*3+i];

        dst[0] = FUNC0( dst[0] + ( (z0 + z3) >> 10 ) );
        dst[1] = FUNC0( dst[1] + ( (z1 + z2) >> 10 ) );
        dst[2] = FUNC0( dst[2] + ( (z1 - z2) >> 10 ) );
        dst[3] = FUNC0( dst[3] + ( (z0 - z3) >> 10 ) );

        dst  += stride;
    }
}