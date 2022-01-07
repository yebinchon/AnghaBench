
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_dev_t {int (* name ) (int ,char*,size_t) ;} ;
typedef int dev_t ;


 int minor (int ) ;
 struct tty_dev_t* pty_get_driver (int ) ;
 int stub1 (int ,char*,size_t) ;

__attribute__((used)) static int
pty_get_name(dev_t dev, char *buffer, size_t size)
{
 struct tty_dev_t *driver = pty_get_driver(dev);
 if (driver && driver->name) {
  return driver->name(minor(dev), buffer, size);
 }
 return 0;
}
