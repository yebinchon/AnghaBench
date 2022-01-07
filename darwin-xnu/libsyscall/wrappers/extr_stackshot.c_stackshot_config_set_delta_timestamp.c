
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int sc_delta_timestamp; scalar_t__ sc_buffer; } ;
typedef TYPE_1__ stackshot_config_t ;



int
stackshot_config_set_delta_timestamp(stackshot_config_t *stackshot_config, uint64_t delta_timestamp)
{
 if (stackshot_config == ((void*)0) || (void *)stackshot_config->sc_buffer != ((void*)0)) {
  return -1;
 }

 stackshot_config->sc_delta_timestamp = delta_timestamp;

 return 0;
}
