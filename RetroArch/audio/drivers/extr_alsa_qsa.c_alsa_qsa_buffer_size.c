
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t buf_size; size_t buf_count; } ;
typedef TYPE_1__ alsa_qsa_t ;



__attribute__((used)) static size_t alsa_qsa_buffer_size(void *data)
{
   alsa_qsa_t *alsa = (alsa_qsa_t*)data;
   return alsa->buf_size * alsa->buf_count;
}
