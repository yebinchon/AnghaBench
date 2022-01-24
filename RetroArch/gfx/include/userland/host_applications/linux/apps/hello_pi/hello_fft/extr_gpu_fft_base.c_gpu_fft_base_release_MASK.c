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
struct GPU_FFT_BASE {int mb; unsigned int handle; unsigned int size; unsigned int peri_size; scalar_t__ peri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned int) ; 

void FUNC4(struct GPU_FFT_BASE *base) {
    int mb = base->mb;
    unsigned handle = base->handle, size = base->size;
    FUNC3((void*)base->peri, base->peri_size);
    FUNC3((void*)base, size);
    FUNC1(mb, handle);
    FUNC0(mb, handle);
    FUNC2(mb, 0);
}