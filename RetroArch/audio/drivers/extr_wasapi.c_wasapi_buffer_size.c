
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t engine_buffer_size; TYPE_1__* buffer; int exclusive; } ;
typedef TYPE_2__ wasapi_t ;
struct TYPE_3__ {size_t size; } ;



__attribute__((used)) static size_t wasapi_buffer_size(void *wh)
{
   wasapi_t *w = (wasapi_t*)wh;

   if (!w->exclusive && w->buffer)
      return w->buffer->size;

   return w->engine_buffer_size;
}
