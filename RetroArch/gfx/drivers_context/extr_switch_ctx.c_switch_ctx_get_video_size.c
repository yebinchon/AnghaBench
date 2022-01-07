
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int switch_ctx_data_t ;




 int appletGetOperationMode () ;

__attribute__((used)) static void switch_ctx_get_video_size(void *data,
                                      unsigned *width, unsigned *height)
{
   switch_ctx_data_t *ctx_nx = (switch_ctx_data_t *)data;

   switch (appletGetOperationMode())
      {
         default:
         case 128:
            *width = 1280;
            *height = 720;
            break;
         case 129:
            *width = 1920;
            *height = 1080;
            break;
      }
}
