
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ioctl ) (size_t,size_t,void*) ;} ;
typedef int DRESULT ;
typedef size_t BYTE ;


 TYPE_1__** s_impls ;
 int stub1 (size_t,size_t,void*) ;

DRESULT ff_disk_ioctl (BYTE pdrv, BYTE cmd, void* buff)
{
    return s_impls[pdrv]->ioctl(pdrv, cmd, buff);
}
