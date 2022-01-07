
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ domain; } ;
typedef scalar_t__ OMX_PORTDOMAINTYPE ;
typedef scalar_t__ MMAL_ES_TYPE_T ;


 scalar_t__ MMAL_ES_TYPE_UNKNOWN ;
 TYPE_1__* mmal_omx_es_type_table ;

MMAL_ES_TYPE_T mmalil_omx_domain_to_es_type(OMX_PORTDOMAINTYPE domain)
{
   unsigned int i;
   for(i = 0; mmal_omx_es_type_table[i].type != MMAL_ES_TYPE_UNKNOWN; i++)
      if(mmal_omx_es_type_table[i].domain == domain) break;
   return mmal_omx_es_type_table[i].type;
}
