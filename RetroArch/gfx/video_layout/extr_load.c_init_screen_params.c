
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scope_t ;


 size_t ARRAY_SIZE (int *) ;
 int scope_param (int *,int ,char*) ;
 int strcpy (char*,int ) ;
 int * video_layout_internal_screen_params ;

__attribute__((used)) static void init_screen_params(scope_t *scope, int screen_index)
{
   char buf[64];
   size_t i;

   for (i = 0; i < ARRAY_SIZE(video_layout_internal_screen_params); i += 2)
   {
      strcpy(buf, video_layout_internal_screen_params[i + 1]);
      buf[3] = '0' + screen_index;

      scope_param(scope, video_layout_internal_screen_params[i], buf);
   }
}
