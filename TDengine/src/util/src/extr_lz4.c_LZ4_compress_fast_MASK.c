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
typedef  int /*<<< orphan*/  LZ4_stream_t ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void* const) ; 
 int FUNC2 (void* const,char const*,char*,int,int,int) ; 

int FUNC3(const char* source, char* dest, int inputSize, int maxOutputSize, int acceleration)
{
#if (LZ4_HEAPMODE)
    void* ctxPtr = ALLOCATOR(1, sizeof(LZ4_stream_t));   /* malloc-calloc always properly aligned */
#else
    LZ4_stream_t ctx;
    void* const ctxPtr = &ctx;
#endif

    int const result = FUNC2(ctxPtr, source, dest, inputSize, maxOutputSize, acceleration);

#if (LZ4_HEAPMODE)
    FREEMEM(ctxPtr);
#endif
    return result;
}