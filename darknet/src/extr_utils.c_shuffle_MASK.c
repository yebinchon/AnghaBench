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

/* Variables and functions */
 size_t RAND_MAX ; 
 void* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 
 size_t FUNC2 () ; 

void FUNC3(void *arr, size_t n, size_t size)
{
    size_t i;
    void *swp = FUNC0(1, size);
    for(i = 0; i < n-1; ++i){
        size_t j = i + FUNC2()/(RAND_MAX / (n-i)+1);
        FUNC1(swp,          arr+(j*size), size);
        FUNC1(arr+(j*size), arr+(i*size), size);
        FUNC1(arr+(i*size), swp,          size);
    }
}