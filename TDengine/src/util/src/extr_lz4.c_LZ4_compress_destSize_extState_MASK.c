#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  internal_donotuse; } ;
typedef  TYPE_1__ LZ4_stream_t ;

/* Variables and functions */
 int LZ4_64Klimit ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char*,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,char const*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  byPtr ; 
 int /*<<< orphan*/  byU16 ; 
 int /*<<< orphan*/  byU32 ; 

__attribute__((used)) static int FUNC4 (LZ4_stream_t* state, const char* src, char* dst, int* srcSizePtr, int targetDstSize)
{
    FUNC3(state);

    if (targetDstSize >= FUNC0(*srcSizePtr)) {  /* compression success is guaranteed */
        return FUNC2(state, src, dst, *srcSizePtr, targetDstSize, 1);
    } else {
        if (*srcSizePtr < LZ4_64Klimit)
            return FUNC1(&state->internal_donotuse, src, dst, srcSizePtr, targetDstSize, byU16);
        else
            return FUNC1(&state->internal_donotuse, src, dst, srcSizePtr, targetDstSize, sizeof(void*)==8 ? byU32 : byPtr);
    }
}