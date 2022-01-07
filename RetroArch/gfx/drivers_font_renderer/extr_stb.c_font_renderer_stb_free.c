
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* buffer; } ;
struct TYPE_5__ {TYPE_1__ atlas; } ;
typedef TYPE_2__ stb_font_renderer_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void font_renderer_stb_free(void *data)
{
   stb_font_renderer_t *self = (stb_font_renderer_t*)data;

   free(self->atlas.buffer);
   free(self);
}
