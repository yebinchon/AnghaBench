
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_pdata {int defbinds; } ;


 int fprintf (int ,char*) ;
 int in_evdev_drv ;
 int in_register_driver (int *,int ,struct in_pdata const*) ;
 int stderr ;

int in_evdev_init(const struct in_pdata *pdata)
{
 if (!pdata) {
  fprintf(stderr, "in_sdl: Missing input platform data\n");
  return -1;
 }

 in_register_driver(&in_evdev_drv, pdata->defbinds, pdata);
 return 0;
}
