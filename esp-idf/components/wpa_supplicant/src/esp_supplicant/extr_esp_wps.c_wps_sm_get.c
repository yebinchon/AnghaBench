
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_sm {int dummy; } ;


 struct wps_sm* gWpsSm ;

struct wps_sm *
wps_sm_get(void)
{
    return gWpsSm;
}
