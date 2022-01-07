
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
typedef void orbis_ctx_data_t ;
struct TYPE_3__ {int size; int flags; int processOrder; int systemSharedMemorySize; int videoSharedMemorySize; int maxMappedFlexibleMemory; int drawCommandBufferSize; int lcueResourceBufferSize; int unk_0x5C; scalar_t__ dbgPosCmd_0x4C; scalar_t__ dbgPosCmd_0x48; int dbgPosCmd_0x44; int dbgPosCmd_0x40; } ;
typedef int EGLint ;


 int ATTR_ORBISGL_HEIGHT ;
 int ATTR_ORBISGL_WIDTH ;


 int EGL_DEFAULT_DISPLAY ;
 int SCE_PGL_FLAGS_USE_COMPOSITE_EXT ;
 int SCE_PGL_FLAGS_USE_FLEXIBLE_MEMORY ;
 scalar_t__ calloc (int,int) ;
 int eglGetError () ;
 int egl_init_context (int *,int const,int ,int*,int*,int*,int const*,int *) ;
 int egl_report_error () ;
 int memset (TYPE_1__*,int ,int) ;
 void* nx_ctx_ptr ;
 int orbis_ctx_destroy (void*) ;
 int printf (char*,int) ;
 int scePigletSetConfigurationVSH (TYPE_1__*) ;

__attribute__((used)) static void *orbis_ctx_init(video_frame_info_t *video_info, void *video_driver)
{
    orbis_ctx_data_t *ctx_orbis = (orbis_ctx_data_t *)calloc(1, sizeof(*ctx_orbis));

    if (!ctx_orbis)
        return ((void*)0);

    nx_ctx_ptr = ctx_orbis;
    return ctx_orbis;

error:
    orbis_ctx_destroy(video_driver);
    return ((void*)0);
}
