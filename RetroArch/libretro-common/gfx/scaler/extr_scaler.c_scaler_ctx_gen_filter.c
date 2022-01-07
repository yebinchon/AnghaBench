
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scaler_ctx {int unscaled; scalar_t__ in_width; scalar_t__ out_width; scalar_t__ in_height; scalar_t__ out_height; int in_fmt; int out_fmt; void* out_pixconv; void* in_pixconv; int scaler_vert; int scaler_horiz; void* direct_pixconv; int * scaler_special; } ;
 int allocate_frames (struct scaler_ctx*) ;
 void* conv_0rgb1555_argb8888 ;
 void* conv_0rgb1555_bgr24 ;
 void* conv_0rgb1555_rgb565 ;
 void* conv_abgr8888_bgr24 ;
 void* conv_argb8888_0rgb1555 ;
 void* conv_argb8888_abgr8888 ;
 void* conv_argb8888_bgr24 ;
 void* conv_argb8888_rgba4444 ;
 void* conv_bgr24_argb8888 ;
 void* conv_bgr24_rgb565 ;
 void* conv_copy ;
 void* conv_rgb565_0rgb1555 ;
 void* conv_rgb565_abgr8888 ;
 void* conv_rgb565_argb8888 ;
 void* conv_rgb565_bgr24 ;
 void* conv_rgba4444_argb8888 ;
 void* conv_rgba4444_rgb565 ;
 void* conv_yuyv_argb8888 ;
 int scaler_argb8888_horiz ;
 int scaler_argb8888_vert ;
 int scaler_ctx_gen_reset (struct scaler_ctx*) ;
 int scaler_gen_filter (struct scaler_ctx*) ;

bool scaler_ctx_gen_filter(struct scaler_ctx *ctx)
{
   scaler_ctx_gen_reset(ctx);

   ctx->scaler_special = ((void*)0);
   ctx->unscaled = 0;

   if (!allocate_frames(ctx))
      return 0;

   if ( ctx->in_width == ctx->out_width
         && ctx->in_height == ctx->out_height)
   {
      ctx->unscaled = 1;

      if (ctx->in_fmt == ctx->out_fmt)
         ctx->direct_pixconv = conv_copy;
      else
      {


         switch (ctx->in_fmt)
         {
            case 134:
               switch (ctx->out_fmt)
               {
                  case 132:
                     ctx->direct_pixconv = conv_0rgb1555_argb8888;
                     break;
                  case 130:
                     ctx->direct_pixconv = conv_0rgb1555_rgb565;
                     break;
                  case 131:
                     ctx->direct_pixconv = conv_0rgb1555_bgr24;
                     break;
                  default:
                     break;
               }
               break;
            case 130:
               switch (ctx->out_fmt)
               {
                  case 132:
                     ctx->direct_pixconv = conv_rgb565_argb8888;
                     break;
                  case 133:
                     ctx->direct_pixconv = conv_rgb565_abgr8888;
                     break;
                  case 131:
                     ctx->direct_pixconv = conv_rgb565_bgr24;
                     break;
                  case 134:
                     ctx->direct_pixconv = conv_rgb565_0rgb1555;
                     break;
                  default:
                     break;
               }
               break;
            case 131:
               switch (ctx->out_fmt)
               {
                  case 132:
                     ctx->direct_pixconv = conv_bgr24_argb8888;
                     break;
                  case 130:
                     ctx->direct_pixconv = conv_bgr24_rgb565;
                  default:
                     break;
               }
               break;
            case 132:
               switch (ctx->out_fmt)
               {
                  case 134:
                     ctx->direct_pixconv = conv_argb8888_0rgb1555;
                     break;
                  case 131:
                     ctx->direct_pixconv = conv_argb8888_bgr24;
                     break;
                  case 133:
                     ctx->direct_pixconv = conv_argb8888_abgr8888;
                     break;
                  case 129:
                     ctx->direct_pixconv = conv_argb8888_rgba4444;
                     break;
                  default:
                     break;
               }
               break;
            case 128:
               switch (ctx->out_fmt)
               {
                  case 132:
                     ctx->direct_pixconv = conv_yuyv_argb8888;
                     break;
                  default:
                     break;
               }
               break;
            case 129:
               switch (ctx->out_fmt)
               {
                  case 132:
                     ctx->direct_pixconv = conv_rgba4444_argb8888;
                     break;
                  case 130:
                     ctx->direct_pixconv = conv_rgba4444_rgb565;
                     break;
                  default:
                     break;
               }
               break;
            case 133:
               switch (ctx->out_fmt)
               {
                  case 131:
                     ctx->direct_pixconv = conv_abgr8888_bgr24;
                     break;
                  default:
                     break;
               }
               break;
         }

         if (!ctx->direct_pixconv)
            return 0;
      }
   }
   else
   {
      ctx->scaler_horiz = scaler_argb8888_horiz;
      ctx->scaler_vert = scaler_argb8888_vert;

      switch (ctx->in_fmt)
      {
         case 132:

            break;

         case 134:
            ctx->in_pixconv = conv_0rgb1555_argb8888;
            break;

         case 130:
            ctx->in_pixconv = conv_rgb565_argb8888;
            break;

         case 131:
            ctx->in_pixconv = conv_bgr24_argb8888;
            break;

         case 129:
            ctx->in_pixconv = conv_rgba4444_argb8888;
            break;

         default:
            return 0;
      }

      switch (ctx->out_fmt)
      {
         case 132:

            break;

         case 129:
            ctx->out_pixconv = conv_argb8888_rgba4444;
            break;

         case 134:
            ctx->out_pixconv = conv_argb8888_0rgb1555;
            break;

         case 131:
            ctx->out_pixconv = conv_argb8888_bgr24;
            break;

         case 133:
            ctx->out_pixconv = conv_argb8888_abgr8888;
            break;

         default:
            return 0;
      }

      if (!scaler_gen_filter(ctx))
         return 0;
   }

   return 1;
}
