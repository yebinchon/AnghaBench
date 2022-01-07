
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ driverType; void* deviceSupportsGamma; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int (* Printf ) (int ,char*) ;} ;
typedef int HDC ;


 scalar_t__ GLDRV_STANDALONE ;
 int GetDC (int ) ;
 int GetDesktopWindow () ;
 void* GetDeviceGammaRamp (int ,int**) ;
 int HIBYTE (int) ;
 int PRINT_WARNING ;
 int ReleaseDC (int ,int ) ;
 TYPE_3__ glConfig ;
 void* qfalse ;
 void* qtrue ;
 void* qwglGetDeviceGammaRamp3DFX (int ,int**) ;
 scalar_t__ qwglSetDeviceGammaRamp3DFX ;
 TYPE_2__* r_ignorehwgamma ;
 TYPE_1__ ri ;
 int** s_oldHardwareGamma ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;

void WG_CheckHardwareGamma( void )
{
 HDC hDC;

 glConfig.deviceSupportsGamma = qfalse;

 if ( qwglSetDeviceGammaRamp3DFX )
 {
  glConfig.deviceSupportsGamma = qtrue;

  hDC = GetDC( GetDesktopWindow() );
  glConfig.deviceSupportsGamma = qwglGetDeviceGammaRamp3DFX( hDC, s_oldHardwareGamma );
  ReleaseDC( GetDesktopWindow(), hDC );

  return;
 }


 if ( glConfig.driverType == GLDRV_STANDALONE )
 {
  return;
 }

 if ( !r_ignorehwgamma->integer )
 {
  hDC = GetDC( GetDesktopWindow() );
  glConfig.deviceSupportsGamma = GetDeviceGammaRamp( hDC, s_oldHardwareGamma );
  ReleaseDC( GetDesktopWindow(), hDC );

  if ( glConfig.deviceSupportsGamma )
  {



   if ( ( HIBYTE( s_oldHardwareGamma[0][255] ) <= HIBYTE( s_oldHardwareGamma[0][0] ) ) ||
     ( HIBYTE( s_oldHardwareGamma[1][255] ) <= HIBYTE( s_oldHardwareGamma[1][0] ) ) ||
     ( HIBYTE( s_oldHardwareGamma[2][255] ) <= HIBYTE( s_oldHardwareGamma[2][0] ) ) )
   {
    glConfig.deviceSupportsGamma = qfalse;
    ri.Printf( PRINT_WARNING, "WARNING: device has broken gamma support, generated gamma.dat\n" );
   }





   if ( ( HIBYTE( s_oldHardwareGamma[0][181] ) == 255 ) )
   {
    int g;

    ri.Printf( PRINT_WARNING, "WARNING: suspicious gamma tables, using linear ramp for restoration\n" );

    for ( g = 0; g < 255; g++ )
    {
     s_oldHardwareGamma[0][g] = g << 8;
     s_oldHardwareGamma[1][g] = g << 8;
     s_oldHardwareGamma[2][g] = g << 8;
    }
   }
  }
 }
}
