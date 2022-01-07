
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_MEM_ADDR_T ;
typedef TYPE_1__* VC_MEM_ACCESS_HANDLE_T ;
struct TYPE_3__ {int vcMemPhys; } ;



VC_MEM_ADDR_T GetVideoCoreMemoryPhysicalAddress( VC_MEM_ACCESS_HANDLE_T vcHandle )
{
    return vcHandle->vcMemPhys;
}
