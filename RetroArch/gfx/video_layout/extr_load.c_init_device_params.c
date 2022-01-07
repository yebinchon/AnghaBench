
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scope_t ;


 size_t ARRAY_SIZE (int *) ;
 int scope_param (int *,int ,int ) ;
 int * video_layout_internal_device_params ;

__attribute__((used)) static void init_device_params(scope_t *scope)
{
   size_t i;

   for (i = 0; i < ARRAY_SIZE(video_layout_internal_device_params); i += 2)
   {
      scope_param(scope, video_layout_internal_device_params[i], video_layout_internal_device_params[i + 1]);
   }
}
