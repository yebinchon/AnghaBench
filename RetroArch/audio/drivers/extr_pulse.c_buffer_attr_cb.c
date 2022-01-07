
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buffer_size; } ;
typedef TYPE_1__ pa_t ;
typedef int pa_stream ;
struct TYPE_5__ {scalar_t__ tlength; } ;
typedef TYPE_2__ pa_buffer_attr ;


 int RARCH_LOG (char*,unsigned int) ;
 TYPE_2__* pa_stream_get_buffer_attr (int *) ;

__attribute__((used)) static void buffer_attr_cb(pa_stream *s, void *data)
{
   pa_t *pa = (pa_t*)data;
   const pa_buffer_attr *server_attr = pa_stream_get_buffer_attr(s);
   if (server_attr)
      pa->buffer_size = server_attr->tlength;




}
