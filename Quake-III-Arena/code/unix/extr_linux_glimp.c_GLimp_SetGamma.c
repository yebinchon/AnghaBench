
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float red; float green; float blue; } ;
typedef TYPE_1__ XF86VidModeGamma ;
struct TYPE_7__ {float value; } ;
struct TYPE_6__ {int deviceSupportsGamma; } ;


 TYPE_4__* Cvar_Get (char*,char*,int ) ;
 int XF86VidModeSetGamma (int ,int ,TYPE_1__*) ;
 int assert (int ) ;
 int dpy ;
 TYPE_2__ glConfig ;
 int scrnum ;

void GLimp_SetGamma( unsigned char red[256], unsigned char green[256], unsigned char blue[256] )
{


  float g = Cvar_Get("r_gamma", "1.0", 0)->value;
  XF86VidModeGamma gamma;
  assert(glConfig.deviceSupportsGamma);
  gamma.red = g;
  gamma.green = g;
  gamma.blue = g;
  XF86VidModeSetGamma(dpy, scrnum, &gamma);
}
