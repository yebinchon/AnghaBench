
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fd_disp; scalar_t__ fd_fb; int framebuffer_size; int framebuffer_addr; } ;
typedef TYPE_1__ sunxi_disp_t ;


 int close (scalar_t__) ;
 int free (TYPE_1__*) ;
 int munmap (int ,int ) ;
 int sunxi_layer_release (TYPE_1__*) ;

__attribute__((used)) static int sunxi_disp_close(sunxi_disp_t *ctx)
{
   if (ctx->fd_disp >= 0)
   {

      sunxi_layer_release(ctx);

      munmap(ctx->framebuffer_addr, ctx->framebuffer_size);
      close(ctx->fd_fb);
      close(ctx->fd_disp);
      ctx->fd_disp = -1;
      free(ctx);
   }
   return 0;
}
