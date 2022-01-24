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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  TPCircularBuffer ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ __attribute__((always_inline)) bool FUNC3(TPCircularBuffer *buffer, const void* src, int32_t len) {
    int32_t space;
    void *ptr = FUNC0(buffer, &space);
    if ( space < len ) return false;
    FUNC2(ptr, src, len);
    FUNC1(buffer, len);
    return true;
}