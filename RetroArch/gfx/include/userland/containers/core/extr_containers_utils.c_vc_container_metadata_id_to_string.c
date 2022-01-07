
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ VC_CONTAINER_METADATA_KEY_T ;
struct TYPE_2__ {scalar_t__ key; char const* name; } ;


 scalar_t__ VC_CONTAINER_METADATA_KEY_UNKNOWN ;
 TYPE_1__* meta_key_conv ;

const char *vc_container_metadata_id_to_string(VC_CONTAINER_METADATA_KEY_T key)
{
   int i;
   for(i = 0; meta_key_conv[i].key != VC_CONTAINER_METADATA_KEY_UNKNOWN; i++ )
      if(meta_key_conv[i].key == key) break;
   return meta_key_conv[i].name;
}
