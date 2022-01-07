
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int win32_suppress_screensaver (void*,int) ;

__attribute__((used)) static bool d3d9_suppress_screensaver(void *data, bool enable)
{



   return win32_suppress_screensaver(data, enable);

}
