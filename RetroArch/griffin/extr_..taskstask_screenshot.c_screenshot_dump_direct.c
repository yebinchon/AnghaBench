
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct scaler_ctx {int in_fmt; } ;
struct TYPE_3__ {scalar_t__ pixel_format_type; int pitch; int width; scalar_t__ height; scalar_t__ frame; int filename; scalar_t__ bgr24; int out_buffer; int scaler; } ;
typedef TYPE_1__ screenshot_task_state_t ;
typedef enum rbmp_source_type { ____Placeholder_rbmp_source_type } rbmp_source_type ;


 int RBMP_SOURCE_TYPE_BGR24 ;
 int RBMP_SOURCE_TYPE_DONT_CARE ;
 int RBMP_SOURCE_TYPE_XRGB888 ;
 scalar_t__ RETRO_PIXEL_FORMAT_XRGB8888 ;
 int SCALER_FMT_ARGB8888 ;
 int SCALER_FMT_BGR24 ;
 int SCALER_FMT_RGB565 ;
 int free (int ) ;
 int rbmp_save_image (int ,scalar_t__,int,scalar_t__,int,int) ;
 int rpng_save_image_bgr24 (int ,int ,int,scalar_t__,int) ;
 int scaler_ctx_gen_reset (int *) ;
 int video_frame_convert_to_bgr24 (struct scaler_ctx*,int ,int const*,int,scalar_t__,int) ;

__attribute__((used)) static bool screenshot_dump_direct(screenshot_task_state_t *state)
{
   struct scaler_ctx *scaler = (struct scaler_ctx*)&state->scaler;
   bool ret = 0;
   return ret;
}
