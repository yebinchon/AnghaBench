
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float gfx_ctx_vc_translate_aspect(void *data,
      unsigned width, unsigned height)
{
   (void)data;

   if ((width == 640 || width == 720) && (height == 480 || height == 576))
      return 4.0f / 3.0f;
   return (float)width / height;
}
