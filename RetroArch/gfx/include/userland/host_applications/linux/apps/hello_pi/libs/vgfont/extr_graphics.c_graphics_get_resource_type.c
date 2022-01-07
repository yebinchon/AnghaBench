
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int restype; } ;
typedef int GRAPHICS_RESOURCE_TYPE_T ;
typedef TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;



int32_t graphics_get_resource_type(const GRAPHICS_RESOURCE_HANDLE res, GRAPHICS_RESOURCE_TYPE_T *type)
{
   if (type) *type = res->restype;
   return 0;
}
