
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ height; scalar_t__ width; } ;
typedef TYPE_1__ VIDEOMODE_resolution_t ;


 TYPE_1__* PLATFORM_DesktopResolution () ;
 unsigned int gcd (scalar_t__,scalar_t__) ;

__attribute__((used)) static void AutodetectHostAspect(double *w, double *h)
{
 VIDEOMODE_resolution_t *res = PLATFORM_DesktopResolution();
 unsigned int d = gcd(res->width, res->height);
 *w = (double)res->width / d;
 *h = (double)res->height / d;
}
