
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_11__ {scalar_t__ id; } ;
struct TYPE_12__ {TYPE_1__ current; } ;
struct TYPE_13__ {int pal_enable; scalar_t__ pal60_enable; TYPE_2__ resolutions; } ;
struct TYPE_14__ {TYPE_3__ screen; } ;
struct TYPE_15__ {TYPE_4__ console; } ;
typedef TYPE_5__ global_t ;
typedef void gfx_ctx_ps3_data_t ;
struct TYPE_17__ {int enable; int width; int height; int rescRatioMode; int rescPalTemporalMode; int multisamplingMode; int depthFormat; int colorFormat; } ;
struct TYPE_16__ {int enable; int maxSPUs; int initializeSPUs; } ;
typedef TYPE_6__ PSGLinitOptions ;
typedef TYPE_7__ PSGLdeviceParameters ;


 int CELL_VIDEO_OUT_ASPECT_AUTO ;
 int CELL_VIDEO_OUT_PRIMARY ;
 int CELL_VIDEO_OUT_RESOLUTION_576 ;
 int GL_ARGB_SCE ;
 int GL_FALSE ;
 int GL_MULTISAMPLING_NONE_SCE ;
 int GL_NONE ;
 int PSGL_DEVICE_PARAMETERS_COLOR_FORMAT ;
 int PSGL_DEVICE_PARAMETERS_DEPTH_FORMAT ;
 int PSGL_DEVICE_PARAMETERS_MULTISAMPLING_MODE ;
 int PSGL_DEVICE_PARAMETERS_RESC_PAL_TEMPORAL_MODE ;
 int PSGL_DEVICE_PARAMETERS_RESC_RATIO_MODE ;
 int PSGL_DEVICE_PARAMETERS_WIDTH_HEIGHT ;
 int PSGL_INIT_INITIALIZE_SPUS ;
 int PSGL_INIT_MAX_SPUS ;
 int RARCH_LOG (char*) ;
 int RESC_PAL_TEMPORAL_MODE_60_INTERPOLATE ;
 int RESC_RATIO_MODE_FULLSCREEN ;
 scalar_t__ calloc (int,int) ;
 int cellVideoOutGetResolutionAvailability (int ,int ,int ,int ) ;
 int gfx_ctx_ps3_get_available_resolutions () ;
 int gfx_ctx_ps3_get_resolution (scalar_t__,int*,int*) ;
 TYPE_5__* global_get_ptr () ;
 int psglCreateContext () ;
 int psglCreateDeviceExtended (TYPE_7__*) ;
 int psglInit (TYPE_6__*) ;
 int psglMakeCurrent (int ,int ) ;
 int psglResetCurrentContext () ;
 int sys_spu_initialize (int,int) ;

__attribute__((used)) static void *gfx_ctx_ps3_init(video_frame_info_t *video_info, void *video_driver)
{




   global_t *global = global_get_ptr();
   gfx_ctx_ps3_data_t *ps3 = (gfx_ctx_ps3_data_t*)
      calloc(1, sizeof(gfx_ctx_ps3_data_t));

   (void)video_driver;
   (void)global;

   if (!ps3)
      return ((void*)0);
   global->console.screen.pal_enable =
      cellVideoOutGetResolutionAvailability(
            CELL_VIDEO_OUT_PRIMARY, CELL_VIDEO_OUT_RESOLUTION_576,
            CELL_VIDEO_OUT_ASPECT_AUTO, 0);

   gfx_ctx_ps3_get_available_resolutions();

   return ps3;
}
