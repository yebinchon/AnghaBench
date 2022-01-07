
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int deviceSupportsGamma; } ;
struct TYPE_3__ {int (* Printf ) (int ,char*) ;} ;


 scalar_t__ GAMMA_MINMAJOR ;
 scalar_t__ GAMMA_MINMINOR ;
 int PRINT_ALL ;
 int XF86VidModeGetGamma (int ,int ,int *) ;
 int dpy ;
 TYPE_2__ glConfig ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ ri ;
 int scrnum ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 int vidmode_InitialGamma ;
 scalar_t__ vidmode_MajorVersion ;
 scalar_t__ vidmode_MinorVersion ;
 scalar_t__ vidmode_ext ;

__attribute__((used)) static void GLW_InitGamma()
{




  glConfig.deviceSupportsGamma = qfalse;

  if (vidmode_ext)
  {
    if (vidmode_MajorVersion < 2 ||
        (vidmode_MajorVersion == 2 && vidmode_MinorVersion < 0)) {
      ri.Printf( PRINT_ALL, "XF86 Gamma extension not supported in this version\n");
      return;
    }
    XF86VidModeGetGamma(dpy, scrnum, &vidmode_InitialGamma);
    ri.Printf( PRINT_ALL, "XF86 Gamma extension initialized\n");
    glConfig.deviceSupportsGamma = qtrue;
  }
}
