
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int updateParam ;
struct TYPE_5__ {int depthSurfaceData; int colorSurfaceData; int strideInPixels; int height; int width; int surfaceType; int colorFormat; } ;
struct TYPE_6__ {int displaySyncObject; TYPE_1__ renderTarget; } ;
typedef TYPE_2__ SceCommonDialogUpdateParam ;


 int DISPLAY_COLOR_FORMAT ;
 int DISPLAY_HEIGHT ;
 int DISPLAY_STRIDE_IN_PIXELS ;
 int DISPLAY_WIDTH ;
 int SCE_GXM_COLOR_SURFACE_LINEAR ;
 size_t backBufferIndex ;
 int depthBufferData ;
 int * displayBufferData ;
 int * displayBufferSync ;
 int memset (TYPE_2__*,int ,int) ;
 int sceCommonDialogUpdate (TYPE_2__*) ;

int vita2d_common_dialog_update()
{
 SceCommonDialogUpdateParam updateParam;
 memset(&updateParam, 0, sizeof(updateParam));

 updateParam.renderTarget.colorFormat = DISPLAY_COLOR_FORMAT;
 updateParam.renderTarget.surfaceType = SCE_GXM_COLOR_SURFACE_LINEAR;
 updateParam.renderTarget.width = DISPLAY_WIDTH;
 updateParam.renderTarget.height = DISPLAY_HEIGHT;
 updateParam.renderTarget.strideInPixels = DISPLAY_STRIDE_IN_PIXELS;

 updateParam.renderTarget.colorSurfaceData = displayBufferData[backBufferIndex];
 updateParam.renderTarget.depthSurfaceData = depthBufferData;
 updateParam.displaySyncObject = displayBufferSync[backBufferIndex];

 return sceCommonDialogUpdate(&updateParam);
}
