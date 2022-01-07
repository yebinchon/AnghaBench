
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mt_device_t ;
struct TYPE_3__ {int mtd_lock; } ;


 int lck_mtx_lock (int *) ;

__attribute__((used)) static void
mt_device_lock(mt_device_t dev)
{
 lck_mtx_lock(&dev->mtd_lock);
}
