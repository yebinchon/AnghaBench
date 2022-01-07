
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_MEM_ADDR_T ;
typedef int VC_MEM_ACCESS_HANDLE_T ;


 int ERR (char*,...) ;
 int LookupVideoCoreSymbol (int ,char const*,int *,size_t*) ;
 int ReadVideoCoreMemory (int ,char*,int ,size_t) ;

int ReadVideoCoreStringBySymbol( VC_MEM_ACCESS_HANDLE_T vcHandle,
                                 const char *symbol,
                                 char *buf,
                                 size_t bufSize )
{
    VC_MEM_ADDR_T vcMemAddr;
    size_t vcMemSize;

    if ( !LookupVideoCoreSymbol( vcHandle, symbol, &vcMemAddr, &vcMemSize ))
    {
        ERR( "Symbol not found: '%s'", symbol );
        return 0;
    }

    if ( vcMemSize > bufSize )
    {
        vcMemSize = bufSize;
    }

    if ( !ReadVideoCoreMemory( vcHandle, buf, vcMemAddr, vcMemSize ))
    {
        ERR( "Unable to read %zu bytes @ 0x%08x", vcMemSize, vcMemAddr );
        return 0;
    }



    buf[vcMemSize-1] = '\0';
    return 1;
}
