
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_MEM_ADDR_T ;
typedef int VC_MEM_ACCESS_HANDLE_T ;


 int ERR (char*,char const*,size_t,int) ;
 int LookupVideoCoreSymbol (int ,char const*,int *,size_t*) ;

int LookupVideoCoreUInt32Symbol( VC_MEM_ACCESS_HANDLE_T vcHandle,
                                 const char *symbol,
                                 VC_MEM_ADDR_T *vcMemAddr )
{
    size_t vcMemSize;

    if ( !LookupVideoCoreSymbol( vcHandle, symbol, vcMemAddr, &vcMemSize ))
    {
        return 0;
    }

    if ( vcMemSize != sizeof( uint32_t ))
    {
        ERR( "Symbol: '%s' has a size of %zu, expecting %zu", symbol, vcMemSize, sizeof( uint32_t ));
        return 0;
    }
    return 1;
}
