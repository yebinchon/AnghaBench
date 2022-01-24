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
typedef  int uint8_t ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__*,int) ; 
 size_t* scan8 ; 

void FUNC2(uint8_t *dst, const int *block_offset,
        int16_t *block, int stride, const uint8_t nnzc[15*8])
{
    int i;
    for(i=0; i<16; i++){
        int nnz = nnzc[ scan8[i] ];
        if(nnz){
            if(nnz==1 && ((int16_t*)block)[i*16])
                FUNC1(dst + block_offset[i], block + i*16,
                        stride);
            else
                FUNC0(dst + block_offset[i], block + i*16,
                        stride);
        }
    }
}