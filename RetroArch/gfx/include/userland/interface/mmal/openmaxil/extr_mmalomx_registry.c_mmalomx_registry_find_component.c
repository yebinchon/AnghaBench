
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* omx_prefix; scalar_t__ mmal; scalar_t__ omx; } ;


 char* MMALOMX_COMPONENT_PREFIX ;
 TYPE_1__* mmalomx_components ;
 int strcmp (char const*,scalar_t__) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

int mmalomx_registry_find_component(const char *name)
{
   int i, prefix_size;
   const char *prefix;

   for (i = 0; mmalomx_components[i].omx; i++)
   {

      prefix = mmalomx_components[i].omx_prefix;
      if (!prefix)
         prefix = MMALOMX_COMPONENT_PREFIX;
      prefix_size = strlen(prefix);
      if (strncmp(name, prefix, prefix_size))
         continue;


      if (!strcmp(name + prefix_size, mmalomx_components[i].omx))
         break;
   }

   return mmalomx_components[i].mmal ? i : -1;
}
