
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* omx_prefix; char const* omx; } ;


 char* MMALOMX_COMPONENT_PREFIX ;
 int MMAL_COUNTOF (TYPE_1__*) ;
 TYPE_1__* mmalomx_components ;

const char *mmalomx_registry_component_name(int id, const char **prefix)
{
   if (id >= (int)MMAL_COUNTOF(mmalomx_components) || id < 0)
      id = MMAL_COUNTOF(mmalomx_components) - 1;

   if (prefix)
   {
      *prefix = mmalomx_components[id].omx_prefix;
      if (!*prefix)
         *prefix = MMALOMX_COMPONENT_PREFIX;
   }

   return mmalomx_components[id].omx;
}
