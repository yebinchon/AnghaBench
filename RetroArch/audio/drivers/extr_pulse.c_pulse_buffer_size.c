
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t buffer_size; } ;
typedef TYPE_1__ pa_t ;



__attribute__((used)) static size_t pulse_buffer_size(void *data)
{
   pa_t *pa = (pa_t*)data;
   return pa->buffer_size;
}
