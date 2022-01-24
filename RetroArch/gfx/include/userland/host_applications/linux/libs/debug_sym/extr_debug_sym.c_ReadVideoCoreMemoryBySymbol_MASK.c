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
typedef  int /*<<< orphan*/  VC_MEM_ADDR_T ;
typedef  int /*<<< orphan*/  VC_MEM_ACCESS_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,size_t) ; 

int FUNC3( VC_MEM_ACCESS_HANDLE_T vcHandle, const char *symbol, void *buf, size_t bufSize )
{
    VC_MEM_ADDR_T   vcMemAddr;
    size_t          vcMemSize;

    if ( !FUNC1( vcHandle, symbol, &vcMemAddr, &vcMemSize ))
    {
        FUNC0( "Symbol not found: '%s'", symbol );
        return 0;
    }

    if ( vcMemSize > bufSize )
    {
        vcMemSize = bufSize;
    }

    if ( !FUNC2( vcHandle, buf, vcMemAddr, vcMemSize ))
    {
        FUNC0( "Unable to read %zu bytes @ 0x%08x", vcMemSize, vcMemAddr );
        return 0;
    }
    return 1;
}