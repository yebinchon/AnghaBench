
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int glconfig_t ;
struct TYPE_2__ {int viewCluster; int registered; } ;


 int RE_ClearScene () ;
 int RE_StretchPic (int ,int ,int ,int ,int ,int ,int,int,int ) ;
 int R_ClearFlares () ;
 int R_Init () ;
 int R_SyncRenderThread () ;
 int glConfig ;
 int qtrue ;
 TYPE_1__ tr ;

void RE_BeginRegistration( glconfig_t *glconfigOut ) {

 R_Init();

 *glconfigOut = glConfig;

 R_SyncRenderThread();

 tr.viewCluster = -1;
 R_ClearFlares();
 RE_ClearScene();

 tr.registered = qtrue;




 RE_StretchPic(0, 0, 0, 0, 0, 0, 1, 1, 0);
}
