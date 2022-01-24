#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {size_t n; scalar_t__* p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static inline int FUNC3(mbedtls_mpi *x, uint32_t mem_base, int num_words)
{
    int ret = 0;

    FUNC0( FUNC2(x, num_words) );

    /* Copy data from memory block registers */
    FUNC1(x->p, mem_base, num_words);
    /* Zero any remaining limbs in the bignum, if the buffer is bigger
       than num_words */
    for(size_t i = num_words; i < x->n; i++) {
        x->p[i] = 0;
    }

    asm volatile ("memw");
 cleanup:
    return ret;
}