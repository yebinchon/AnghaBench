
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int dev_t ;
typedef int caddr_t ;
struct TYPE_2__ {int (* d_ioctl ) (int ,int ,int ,int ,void*) ;} ;


 int S_IFBLK ;
 TYPE_1__* bdevsw ;
 size_t major (int ) ;
 int stub1 (int ,int ,int ,int ,void*) ;

__attribute__((used)) static int file_ioctl(void * p1, void * p2, u_long theIoctl, caddr_t result)
{
    dev_t device = *(dev_t*) p1;

    return ((*bdevsw[major(device)].d_ioctl)
      (device, theIoctl, result, S_IFBLK, p2));
}
