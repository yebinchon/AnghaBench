
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ VC_MEM_ADDR_T ;
typedef TYPE_1__* VC_MEM_ACCESS_HANDLE_T ;
struct TYPE_5__ {size_t size; scalar_t__ addr; int label; } ;
typedef TYPE_2__ VC_DEBUG_SYMBOL_T ;
struct TYPE_4__ {unsigned int numSymbols; TYPE_2__* symbol; } ;


 int EINVAL ;
 int strncpy (char*,int ,size_t) ;

int GetVideoCoreSymbol( VC_MEM_ACCESS_HANDLE_T vcHandle, unsigned idx, char *labelBuf, size_t labelBufSize, VC_MEM_ADDR_T *vcMemAddr, size_t *vcMemSize )
{
    VC_DEBUG_SYMBOL_T *sym;

    if ( idx >= vcHandle->numSymbols )
    {
        return -EINVAL;
    }
    sym = &vcHandle->symbol[ idx ];

    strncpy( labelBuf, sym->label, labelBufSize );
    labelBuf[labelBufSize - 1] = '\0';

    if ( vcMemAddr != ((void*)0) )
    {
        *vcMemAddr = (VC_MEM_ADDR_T)sym->addr;
    }
    if ( vcMemSize != ((void*)0) )
    {
        *vcMemSize = sym->size;
    }

    return 0;
}
