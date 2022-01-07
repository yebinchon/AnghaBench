
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ VC_CONTAINER_ES_TYPE_T ;
struct TYPE_2__ {scalar_t__ container_type; scalar_t__ type; } ;
typedef scalar_t__ MMAL_ES_TYPE_T ;


 scalar_t__ VC_CONTAINER_ES_TYPE_UNKNOWN ;
 TYPE_1__* es_type_table ;

__attribute__((used)) static VC_CONTAINER_ES_TYPE_T mmal_to_container_es_type(MMAL_ES_TYPE_T type)
{
   unsigned int i;
   for(i = 0; es_type_table[i].container_type != VC_CONTAINER_ES_TYPE_UNKNOWN; i++)
      if(es_type_table[i].type == type)
         break;
   return es_type_table[i].container_type;
}
