
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int (* read ) (size_t,size_t*,int ,int ) ;} ;
typedef int DWORD ;
typedef int DRESULT ;
typedef size_t BYTE ;


 TYPE_1__** s_impls ;
 int stub1 (size_t,size_t*,int ,int ) ;

DRESULT ff_disk_read (BYTE pdrv, BYTE* buff, DWORD sector, UINT count)
{
    return s_impls[pdrv]->read(pdrv, buff, sector, count);
}
