
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int blend_mode_add; int blend_mode_normal; } ;
struct TYPE_3__ {int hostMem; } ;


 unsigned int DISPLAY_BUFFER_COUNT ;
 int DISPLAY_HEIGHT ;
 int DISPLAY_STRIDE_IN_PIXELS ;
 int VITA2D_DEBUG (char*) ;
 int _vita2d_colorVertexProgram ;
 int _vita2d_context ;
 TYPE_2__ _vita2d_fragmentPrograms ;
 int _vita2d_free_fragment_programs (int *) ;
 int _vita2d_textureVertexProgram ;
 int clearFragmentProgram ;
 int clearFragmentProgramId ;
 int clearVertexProgram ;
 int clearVertexProgramId ;
 int clearVerticesUid ;
 int colorFragmentProgramId ;
 int colorVertexProgramId ;
 TYPE_1__ contextParams ;
 int depthBufferUid ;
 int * displayBufferData ;
 int * displayBufferSync ;
 int * displayBufferUid ;
 int fragmentRingBufferUid ;
 int fragmentUsseRingBufferUid ;
 int fragment_usse_free (int ) ;
 int free (int ) ;
 int gpu_free (int ) ;
 int linearIndicesUid ;
 int memset (int ,int ,int) ;
 int patcherBufferUid ;
 int patcherFragmentUsseUid ;
 int patcherVertexUsseUid ;
 int poolUid ;
 int renderTarget ;
 int sceGxmDestroyContext (int ) ;
 int sceGxmDestroyRenderTarget (int ) ;
 int sceGxmDisplayQueueFinish () ;
 int sceGxmFinish (int ) ;
 int sceGxmShaderPatcherDestroy (int ) ;
 int sceGxmShaderPatcherReleaseFragmentProgram (int ,int ) ;
 int sceGxmShaderPatcherReleaseVertexProgram (int ,int ) ;
 int sceGxmShaderPatcherUnregisterProgram (int ,int ) ;
 int sceGxmSyncObjectDestroy (int ) ;
 int sceGxmTerminate () ;
 int shaderPatcher ;
 int stencilBufferUid ;
 int textureFragmentProgramId ;
 int textureTintFragmentProgramId ;
 int textureVertexProgramId ;
 int vdmRingBufferUid ;
 int vertexRingBufferUid ;
 int vertex_usse_free (int ) ;
 scalar_t__ vita2d_initialized ;

int vita2d_fini()
{
 unsigned int i;

 if (!vita2d_initialized) {
  VITA2D_DEBUG("libvita2d is not initialized!\n");
  return 1;
 }


 sceGxmFinish(_vita2d_context);


 sceGxmShaderPatcherReleaseFragmentProgram(shaderPatcher, clearFragmentProgram);
 sceGxmShaderPatcherReleaseVertexProgram(shaderPatcher, clearVertexProgram);
 sceGxmShaderPatcherReleaseVertexProgram(shaderPatcher, _vita2d_colorVertexProgram);
 sceGxmShaderPatcherReleaseVertexProgram(shaderPatcher, _vita2d_textureVertexProgram);

 _vita2d_free_fragment_programs(&_vita2d_fragmentPrograms.blend_mode_normal);
 _vita2d_free_fragment_programs(&_vita2d_fragmentPrograms.blend_mode_add);

 gpu_free(linearIndicesUid);
 gpu_free(clearVerticesUid);


 sceGxmDisplayQueueFinish();


 gpu_free(depthBufferUid);
 for (i = 0; i < DISPLAY_BUFFER_COUNT; i++) {

  memset(displayBufferData[i], 0, DISPLAY_HEIGHT*DISPLAY_STRIDE_IN_PIXELS*4);
  gpu_free(displayBufferUid[i]);


  sceGxmSyncObjectDestroy(displayBufferSync[i]);
 }


 gpu_free(depthBufferUid);
 gpu_free(stencilBufferUid);


 sceGxmShaderPatcherUnregisterProgram(shaderPatcher, clearFragmentProgramId);
 sceGxmShaderPatcherUnregisterProgram(shaderPatcher, clearVertexProgramId);
 sceGxmShaderPatcherUnregisterProgram(shaderPatcher, colorFragmentProgramId);
 sceGxmShaderPatcherUnregisterProgram(shaderPatcher, colorVertexProgramId);
 sceGxmShaderPatcherUnregisterProgram(shaderPatcher, textureFragmentProgramId);
 sceGxmShaderPatcherUnregisterProgram(shaderPatcher, textureTintFragmentProgramId);
 sceGxmShaderPatcherUnregisterProgram(shaderPatcher, textureVertexProgramId);

 sceGxmShaderPatcherDestroy(shaderPatcher);
 fragment_usse_free(patcherFragmentUsseUid);
 vertex_usse_free(patcherVertexUsseUid);
 gpu_free(patcherBufferUid);


 sceGxmDestroyRenderTarget(renderTarget);


 sceGxmDestroyContext(_vita2d_context);
 fragment_usse_free(fragmentUsseRingBufferUid);
 gpu_free(fragmentRingBufferUid);
 gpu_free(vertexRingBufferUid);
 gpu_free(vdmRingBufferUid);
 free(contextParams.hostMem);

 gpu_free(poolUid);


 sceGxmTerminate();




 vita2d_initialized = 0;

 return 1;
}
