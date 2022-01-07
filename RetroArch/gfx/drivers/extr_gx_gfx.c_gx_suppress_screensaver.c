
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool gx_suppress_screensaver(void *data, bool enable)
{
   (void)data;
   (void)enable;

   return 0;
}
