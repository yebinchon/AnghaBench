
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int (* write ) (size_t,size_t const*,int ,int ) ;} ;
typedef int DWORD ;
typedef int DRESULT ;
typedef size_t BYTE ;


 TYPE_1__** s_impls ;
 int stub1 (size_t,size_t const*,int ,int ) ;

DRESULT ff_disk_write (BYTE pdrv, const BYTE* buff, DWORD sector, UINT count)
{
    return s_impls[pdrv]->write(pdrv, buff, sector, count);
}
