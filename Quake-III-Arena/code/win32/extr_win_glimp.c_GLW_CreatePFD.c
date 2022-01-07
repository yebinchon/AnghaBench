
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_7__ {int stereoEnabled; } ;
struct TYPE_6__ {int (* Printf ) (int ,char*) ;} ;
struct TYPE_5__ {int member_0; int member_1; int member_2; int member_4; int member_18; int member_19; int cColorBits; int cDepthBits; int cStencilBits; int dwFlags; int member_25; int member_24; int member_23; int member_22; int member_21; int member_20; int member_17; int member_16; int member_15; int member_14; int member_13; int member_12; int member_11; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_3; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;


 int PFD_DOUBLEBUFFER ;
 int PFD_DRAW_TO_WINDOW ;
 int PFD_MAIN_PLANE ;
 int PFD_STEREO ;
 int PFD_SUPPORT_OPENGL ;
 int PFD_TYPE_RGBA ;
 int PRINT_ALL ;
 TYPE_3__ glConfig ;
 int qfalse ;
 int qtrue ;
 TYPE_2__ ri ;
 int stub1 (int ,char*) ;

__attribute__((used)) static void GLW_CreatePFD( PIXELFORMATDESCRIPTOR *pPFD, int colorbits, int depthbits, int stencilbits, qboolean stereo )
{
    PIXELFORMATDESCRIPTOR src =
 {
  sizeof(PIXELFORMATDESCRIPTOR),
  1,
  PFD_DRAW_TO_WINDOW |
  PFD_SUPPORT_OPENGL |
  PFD_DOUBLEBUFFER,
  PFD_TYPE_RGBA,
  24,
  0, 0, 0, 0, 0, 0,
  0,
  0,
  0,
  0, 0, 0, 0,
  24,
  8,
  0,
  PFD_MAIN_PLANE,
  0,
  0, 0, 0
    };

 src.cColorBits = colorbits;
 src.cDepthBits = depthbits;
 src.cStencilBits = stencilbits;

 if ( stereo )
 {
  ri.Printf( PRINT_ALL, "...attempting to use stereo\n" );
  src.dwFlags |= PFD_STEREO;
  glConfig.stereoEnabled = qtrue;
 }
 else
 {
  glConfig.stereoEnabled = qfalse;
 }

 *pPFD = src;
}
