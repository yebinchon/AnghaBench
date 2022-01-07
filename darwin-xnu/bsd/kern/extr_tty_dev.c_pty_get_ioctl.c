
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_dev_t {struct ptmx_ioctl* (* open ) (int ,int) ;} ;
struct ptmx_ioctl {int dummy; } ;
typedef int dev_t ;


 int minor (int ) ;
 struct tty_dev_t* pty_get_driver (int ) ;
 struct ptmx_ioctl* stub1 (int ,int) ;

__attribute__((used)) static struct ptmx_ioctl *
pty_get_ioctl(dev_t dev, int open_flag, struct tty_dev_t **out_driver)
{
 struct tty_dev_t *driver = pty_get_driver(dev);
 if (out_driver) {
  *out_driver = driver;
 }
 if (driver && driver->open) {
  return driver->open(minor(dev), open_flag);
 }
 return ((void*)0);
}
