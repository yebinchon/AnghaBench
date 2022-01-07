
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_MEM_ADDR_T ;
typedef int VC_MEM_ACCESS_HANDLE_T ;


 int AccessVideoCoreMemory (int ,int ,void*,int ,size_t) ;
 int READ_MEM ;

int ReadVideoCoreMemory( VC_MEM_ACCESS_HANDLE_T vcHandle, void *buf, VC_MEM_ADDR_T vcMemAddr, size_t numBytes )
{
    return AccessVideoCoreMemory( vcHandle, READ_MEM, buf, vcMemAddr, numBytes );
}
