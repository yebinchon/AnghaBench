
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; int pixsize; int screen; int socket; } ;
typedef TYPE_1__ gfx_ctx_osmesa_data_t ;


 int osmesa_fifo_accept (TYPE_1__*) ;
 int osmesa_fifo_write (TYPE_1__*) ;
 int write (int ,int ,int) ;

__attribute__((used)) static void osmesa_ctx_swap_buffers(void *data, void *data2)
{
   gfx_ctx_osmesa_data_t *osmesa = (gfx_ctx_osmesa_data_t*)data;
   osmesa_fifo_accept(osmesa);
   osmesa_fifo_write(osmesa);




}
