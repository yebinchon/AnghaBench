#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ vptr; } ;
struct GPU_FFT_PTR {TYPE_1__ arm; scalar_t__ vc; } ;
struct GPU_FFT_HOST {unsigned int peri_size; scalar_t__ mem_map; int /*<<< orphan*/  peri_addr; int /*<<< orphan*/  mem_flg; } ;
struct GPU_FFT_BASE {unsigned int volatile* peri; unsigned int peri_size; int mb; unsigned int handle; unsigned int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct GPU_FFT_HOST*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (int,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 scalar_t__ FUNC5 (int,unsigned int) ; 
 scalar_t__ FUNC6 (int,int) ; 

int FUNC7 (
    int mb,
    unsigned size,
    struct GPU_FFT_PTR *ptr) {

    struct GPU_FFT_HOST host;
    struct GPU_FFT_BASE *base;
    volatile unsigned *peri;
    unsigned handle;

    if (FUNC1(&host)) return -5;

    if (FUNC6(mb, 1)) return -1;

    // Shared memory
    handle = FUNC3(mb, size, 4096, host.mem_flg);
    if (!handle) {
        FUNC6(mb, 0);
        return -3;
    }

    peri = (volatile unsigned *) FUNC2(host.peri_addr, host.peri_size);
    if (!peri) {
        FUNC4(mb, handle);
        FUNC6(mb, 0);
        return -4;
    }

    ptr->vc = FUNC5(mb, handle);
    ptr->arm.vptr = FUNC2(FUNC0(ptr->vc+host.mem_map), size);

    base = (struct GPU_FFT_BASE *) ptr->arm.vptr;
    base->peri      = peri;
    base->peri_size = host.peri_size;
    base->mb        = mb;
    base->handle    = handle;
    base->size      = size;

    return 0;
}