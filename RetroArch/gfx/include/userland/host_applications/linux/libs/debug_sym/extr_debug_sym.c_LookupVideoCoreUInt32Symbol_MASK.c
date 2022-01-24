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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VC_MEM_ADDR_T ;
typedef  int /*<<< orphan*/  VC_MEM_ACCESS_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,size_t*) ; 

int FUNC2( VC_MEM_ACCESS_HANDLE_T vcHandle,
                                 const char *symbol,
                                 VC_MEM_ADDR_T *vcMemAddr )
{
    size_t  vcMemSize;

    if ( !FUNC1( vcHandle, symbol, vcMemAddr, &vcMemSize ))
    {
        return 0;
    }

    if ( vcMemSize != sizeof( uint32_t ))
    {
        FUNC0( "Symbol: '%s' has a size of %zu, expecting %zu", symbol, vcMemSize, sizeof( uint32_t ));
        return 0;
    }
    return 1;
}