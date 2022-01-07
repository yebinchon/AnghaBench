
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int gpiodev ;

__attribute__((used)) static void in_gp2x_free(void *drv_data)
{
 if (gpiodev >= 0) {
  close(gpiodev);
  gpiodev = -1;
 }
}
