
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct proc {int dummy; } ;
typedef int dev_t ;
typedef int caddr_t ;


 int mdevioctl (int ,int ,int ,int,struct proc*,int ) ;

__attribute__((used)) static int mdevbioctl(dev_t dev, u_long cmd, caddr_t data, int flag, struct proc *p) {
 return (mdevioctl(dev, cmd, data, flag, p, 0));
}
