
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_20__ {int hWnd; } ;
struct TYPE_19__ {int colorBits; int depthBits; int stencilBits; int stereoEnabled; } ;
struct TYPE_18__ {int desktopBitsPixel; int * hDC; int pixelFormatSet; } ;
struct TYPE_17__ {int integer; } ;
struct TYPE_16__ {int integer; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_12__ {int dwFlags; scalar_t__ cStencilBits; scalar_t__ cDepthBits; scalar_t__ cColorBits; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;


 int GLW_CreatePFD (TYPE_1__*,int,int,int,scalar_t__) ;
 int GLW_MakeContext (TYPE_1__*) ;
 int * GetDC (int ) ;
 int PFD_STEREO ;
 int PRINT_ALL ;
 int PRINT_WARNING ;
 int ReleaseDC (int ,int *) ;
 int TRY_PFD_FAIL_HARD ;
 int TRY_PFD_SUCCESS ;
 TYPE_9__ g_wv ;
 TYPE_8__ glConfig ;
 TYPE_7__ glw_state ;
 int qfalse ;
 int qtrue ;
 TYPE_6__* r_colorbits ;
 TYPE_5__* r_depthbits ;
 TYPE_4__* r_stencilbits ;
 TYPE_3__* r_stereo ;
 TYPE_2__ ri ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 int stub3 (int ,char*) ;
 int stub4 (int ,char*) ;
 int stub5 (int ,char*) ;
 int stub6 (int ,char*) ;
 int stub7 (int ,char*) ;
 int stub8 (int ,char*) ;

__attribute__((used)) static qboolean GLW_InitDriver( const char *drivername, int colorbits )
{
 int tpfd;
 int depthbits, stencilbits;
 static PIXELFORMATDESCRIPTOR pfd;

 ri.Printf( PRINT_ALL, "Initializing OpenGL driver\n" );




 if ( glw_state.hDC == ((void*)0) )
 {
  ri.Printf( PRINT_ALL, "...getting DC: " );

  if ( ( glw_state.hDC = GetDC( g_wv.hWnd ) ) == ((void*)0) )
  {
   ri.Printf( PRINT_ALL, "failed\n" );
   return qfalse;
  }
  ri.Printf( PRINT_ALL, "succeeded\n" );
 }

 if ( colorbits == 0 )
 {
  colorbits = glw_state.desktopBitsPixel;
 }




 if ( r_depthbits->integer == 0 ) {
  if ( colorbits > 16 ) {
   depthbits = 24;
  } else {
   depthbits = 16;
  }
 } else {
  depthbits = r_depthbits->integer;
 }




 stencilbits = r_stencilbits->integer;
 if ( depthbits < 24 )
 {
  stencilbits = 0;
 }
 if ( !glw_state.pixelFormatSet )
 {
  GLW_CreatePFD( &pfd, colorbits, depthbits, stencilbits, r_stereo->integer );
  if ( ( tpfd = GLW_MakeContext( &pfd ) ) != TRY_PFD_SUCCESS )
  {
   if ( tpfd == TRY_PFD_FAIL_HARD )
   {
    ri.Printf( PRINT_WARNING, "...failed hard\n" );
    return qfalse;
   }




   if ( ( r_colorbits->integer == glw_state.desktopBitsPixel ) &&
     ( stencilbits == 0 ) )
   {
    ReleaseDC( g_wv.hWnd, glw_state.hDC );
    glw_state.hDC = ((void*)0);

    ri.Printf( PRINT_ALL, "...failed to find an appropriate PIXELFORMAT\n" );

    return qfalse;
   }




   if ( colorbits > glw_state.desktopBitsPixel )
   {
    colorbits = glw_state.desktopBitsPixel;
   }
   GLW_CreatePFD( &pfd, colorbits, depthbits, 0, r_stereo->integer );
   if ( GLW_MakeContext( &pfd ) != TRY_PFD_SUCCESS )
   {
    if ( glw_state.hDC )
    {
     ReleaseDC( g_wv.hWnd, glw_state.hDC );
     glw_state.hDC = ((void*)0);
    }

    ri.Printf( PRINT_ALL, "...failed to find an appropriate PIXELFORMAT\n" );

    return qfalse;
   }
  }




  if ( !( pfd.dwFlags & PFD_STEREO ) && ( r_stereo->integer != 0 ) )
  {
   ri.Printf( PRINT_ALL, "...failed to select stereo pixel format\n" );
   glConfig.stereoEnabled = qfalse;
  }
 }




 glConfig.colorBits = ( int ) pfd.cColorBits;
 glConfig.depthBits = ( int ) pfd.cDepthBits;
 glConfig.stencilBits = ( int ) pfd.cStencilBits;

 return qtrue;
}
