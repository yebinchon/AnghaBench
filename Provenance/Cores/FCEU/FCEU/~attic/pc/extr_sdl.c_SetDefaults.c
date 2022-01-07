
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ specialfs; scalar_t__ special; } ;


 TYPE_1__ Settings ;
 int _bpp ;
 scalar_t__ _efx ;
 scalar_t__ _efxfs ;
 scalar_t__ _fullscreen ;
 int _opengl ;
 int _openglip ;
 int _stretchx ;
 scalar_t__ _stretchy ;
 int _xres ;
 double _xscale ;
 int _xscalefs ;
 int _yres ;
 int _yscale ;
 int _yscalefs ;

__attribute__((used)) static void SetDefaults(void)
{
 Settings.special=Settings.specialfs=0;
 _bpp=8;
 _xres=640;
 _yres=480;
 _fullscreen=0;
 _xscale=2.50;
 _yscale=2;
 _xscalefs=_yscalefs=2;
 _efx=_efxfs=0;







}
