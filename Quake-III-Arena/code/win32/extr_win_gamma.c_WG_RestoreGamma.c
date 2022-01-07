
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ deviceSupportsGamma; } ;
struct TYPE_3__ {int hDC; } ;
typedef int HDC ;


 int GetDC (int ) ;
 int GetDesktopWindow () ;
 int ReleaseDC (int ,int ) ;
 int SetDeviceGammaRamp (int ,int ) ;
 TYPE_2__ glConfig ;
 TYPE_1__ glw_state ;
 int qwglSetDeviceGammaRamp3DFX (int ,int ) ;
 int s_oldHardwareGamma ;

void WG_RestoreGamma( void )
{
 if ( glConfig.deviceSupportsGamma )
 {
  if ( qwglSetDeviceGammaRamp3DFX )
  {
   qwglSetDeviceGammaRamp3DFX( glw_state.hDC, s_oldHardwareGamma );
  }
  else
  {
   HDC hDC;

   hDC = GetDC( GetDesktopWindow() );
   SetDeviceGammaRamp( hDC, s_oldHardwareGamma );
   ReleaseDC( GetDesktopWindow(), hDC );
  }
 }
}
