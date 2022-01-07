
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {char const* omx_name; } ;
typedef TYPE_1__ MMALOMX_PARAM_TRANSLATION_T ;


 TYPE_1__* mmalomx_find_parameter_from_omx_id (int ) ;

const char *mmalomx_parameter_name_omx(uint32_t id)
{
   const MMALOMX_PARAM_TRANSLATION_T *xlat = mmalomx_find_parameter_from_omx_id(id);
   return xlat ? xlat->omx_name : 0;
}
