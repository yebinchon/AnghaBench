
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* mmal; } ;


 int MMAL_COUNTOF (TYPE_1__*) ;
 TYPE_1__* mmalomx_components ;

const char *mmalomx_registry_component_mmal(int id)
{
   if (id >= (int)MMAL_COUNTOF(mmalomx_components) || id < 0)
      id = MMAL_COUNTOF(mmalomx_components) - 1;

   return mmalomx_components[id].mmal;
}
