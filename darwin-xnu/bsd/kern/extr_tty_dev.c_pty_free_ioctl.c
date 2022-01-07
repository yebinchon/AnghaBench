
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_dev_t {int (* free ) (int ,int) ;} ;
typedef int dev_t ;


 int minor (int ) ;
 struct tty_dev_t* pty_get_driver (int ) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int
pty_free_ioctl(dev_t dev, int open_flag)
{
 struct tty_dev_t *driver = pty_get_driver(dev);
 if (driver && driver->free) {
  return driver->free(minor(dev), open_flag);
 }
 return 0;
}
