
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cb_max_size; int error_callback; scalar_t__ audio_callback; void* cb_data; } ;
typedef TYPE_1__ rsound_t ;
typedef int rsd_error_callback_t ;
typedef scalar_t__ rsd_audio_callback_t ;


 int retro_assert (int ) ;

void rsd_set_callback(rsound_t *rsound, rsd_audio_callback_t audio_cb, rsd_error_callback_t err_cb, size_t max_size, void *userdata)
{
   retro_assert(rsound != ((void*)0));

   rsound->audio_callback = audio_cb;
   rsound->error_callback = err_cb;
   rsound->cb_max_size = max_size;
   rsound->cb_data = userdata;

   if (rsound->audio_callback)
   {
      retro_assert(rsound->error_callback);
   }
}
