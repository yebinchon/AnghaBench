
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_float; } ;
typedef TYPE_1__ alsa_qsa_t ;



__attribute__((used)) static bool alsa_qsa_use_float(void *data)
{
   alsa_qsa_t *alsa = (alsa_qsa_t*)data;
   return alsa->has_float;
}
