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
typedef  int /*<<< orphan*/  symName ;
typedef  int /*<<< orphan*/  VC_MEM_ADDR_T ;
typedef  TYPE_1__* VC_MEM_ACCESS_HANDLE_T ;
struct TYPE_4__ {unsigned int numSymbols; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int,char*,int,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

int FUNC3( VC_MEM_ACCESS_HANDLE_T vcHandle, const char *symbol, VC_MEM_ADDR_T *vcMemAddr, size_t *vcMemSize )
{
    unsigned        idx;
    char            symName[ 64 ];
    VC_MEM_ADDR_T   symAddr = 0;
    size_t          symSize = 0;

    for ( idx = 0; idx < vcHandle->numSymbols; idx++ )
    {
        FUNC1( vcHandle, idx, symName, sizeof( symName ), &symAddr, &symSize );
        if ( FUNC2( symbol, symName ) == 0 )
        {
            if ( vcMemAddr != NULL )
            {
                *vcMemAddr = symAddr;
            }
            if ( vcMemSize != 0 )
            {
                *vcMemSize = symSize;
            }

            FUNC0( "%s found, addr = 0x%08x size = %zu", symbol, symAddr, symSize );
            return 1;
        }
    }

    if ( vcMemAddr != NULL )
    {
        *vcMemAddr = 0;
    }
    if ( vcMemSize != 0 )
    {
        *vcMemSize = 0;
    }
    FUNC0( "%s not found", symbol );
    return 0;
}