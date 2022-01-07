
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
typedef int CGLPixelFormatObj ;
typedef int CGLPixelFormatAttribute ;
typedef int * CGLContextObj ;


 int CGLChoosePixelFormat (int *,int *,int*) ;
 int CGLCreateContext (int ,int *,int **) ;
 int CGLDestroyPixelFormat (int ) ;
 int CGLSetParameter (int *,int ,int*) ;
 int kCGLCPSwapInterval ;
 int kCGLPFAAccelerated ;
 int kCGLPFADoubleBuffer ;

__attribute__((used)) static CGLContextObj gfx_ctx_cgl_init_create(void)
{
   GLint num, params = 1;
   CGLPixelFormatObj pix;
   CGLContextObj glCtx = ((void*)0);
   CGLPixelFormatAttribute attributes[] = {
      kCGLPFAAccelerated,
      kCGLPFADoubleBuffer,
      (CGLPixelFormatAttribute)0
   };

   CGLChoosePixelFormat(attributes, &pix, &num);
   CGLCreateContext(pix, ((void*)0), &glCtx);
   CGLDestroyPixelFormat(pix);

   CGLSetParameter(glCtx, kCGLCPSwapInterval, &params);

   return glCtx;
}
