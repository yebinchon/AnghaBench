
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ tinyalsa_t ;



__attribute__((used)) static bool
tinyalsa_alive(void *data)
{
 tinyalsa_t *tinyalsa = (tinyalsa_t*)data;

 if (tinyalsa)
  return !tinyalsa->is_paused;

 return 0;
}
