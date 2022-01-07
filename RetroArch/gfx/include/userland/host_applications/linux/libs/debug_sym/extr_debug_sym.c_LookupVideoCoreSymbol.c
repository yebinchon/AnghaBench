
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int symName ;
typedef int VC_MEM_ADDR_T ;
typedef TYPE_1__* VC_MEM_ACCESS_HANDLE_T ;
struct TYPE_4__ {unsigned int numSymbols; } ;


 int DBG (char*,char const*,...) ;
 int GetVideoCoreSymbol (TYPE_1__*,unsigned int,char*,int,int *,size_t*) ;
 scalar_t__ strcmp (char const*,char*) ;

int LookupVideoCoreSymbol( VC_MEM_ACCESS_HANDLE_T vcHandle, const char *symbol, VC_MEM_ADDR_T *vcMemAddr, size_t *vcMemSize )
{
    unsigned idx;
    char symName[ 64 ];
    VC_MEM_ADDR_T symAddr = 0;
    size_t symSize = 0;

    for ( idx = 0; idx < vcHandle->numSymbols; idx++ )
    {
        GetVideoCoreSymbol( vcHandle, idx, symName, sizeof( symName ), &symAddr, &symSize );
        if ( strcmp( symbol, symName ) == 0 )
        {
            if ( vcMemAddr != ((void*)0) )
            {
                *vcMemAddr = symAddr;
            }
            if ( vcMemSize != 0 )
            {
                *vcMemSize = symSize;
            }

            DBG( "%s found, addr = 0x%08x size = %zu", symbol, symAddr, symSize );
            return 1;
        }
    }

    if ( vcMemAddr != ((void*)0) )
    {
        *vcMemAddr = 0;
    }
    if ( vcMemSize != 0 )
    {
        *vcMemSize = 0;
    }
    DBG( "%s not found", symbol );
    return 0;
}
