
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* init ) (size_t) ;} ;
typedef int DSTATUS ;
typedef size_t BYTE ;


 TYPE_1__** s_impls ;
 int stub1 (size_t) ;

DSTATUS ff_disk_initialize (BYTE pdrv)
{
    return s_impls[pdrv]->init(pdrv);
}
