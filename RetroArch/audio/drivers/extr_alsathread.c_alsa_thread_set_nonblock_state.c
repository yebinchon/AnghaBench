
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nonblock; } ;
typedef TYPE_1__ alsa_thread_t ;



__attribute__((used)) static void alsa_thread_set_nonblock_state(void *data, bool state)
{
   alsa_thread_t *alsa = (alsa_thread_t*)data;
   alsa->nonblock = state;
}
