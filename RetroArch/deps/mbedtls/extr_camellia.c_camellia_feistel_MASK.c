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
typedef  int uint32_t ;
typedef  int I1 ;
typedef  int I0 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4( const uint32_t x[2], const uint32_t k[2],
                              uint32_t z[2])
{
    uint32_t I0, I1;
    I0 = x[0] ^ k[0];
    I1 = x[1] ^ k[1];

    I0 = ((uint32_t) FUNC0((I0 >> 24) & 0xFF) << 24) |
         ((uint32_t) FUNC1((I0 >> 16) & 0xFF) << 16) |
         ((uint32_t) FUNC2((I0 >>  8) & 0xFF) <<  8) |
         ((uint32_t) FUNC3((I0      ) & 0xFF)      );
    I1 = ((uint32_t) FUNC1((I1 >> 24) & 0xFF) << 24) |
         ((uint32_t) FUNC2((I1 >> 16) & 0xFF) << 16) |
         ((uint32_t) FUNC3((I1 >>  8) & 0xFF) <<  8) |
         ((uint32_t) FUNC0((I1      ) & 0xFF)      );

    I0 ^= (I1 << 8) | (I1 >> 24);
    I1 ^= (I0 << 16) | (I0 >> 16);
    I0 ^= (I1 >> 8) | (I1 << 24);
    I1 ^= (I0 >> 8) | (I0 << 24);

    z[0] ^= I1;
    z[1] ^= I0;
}