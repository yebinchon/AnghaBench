
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int materialui_handle_t ;


 int MUI_ANIM_DURATION_SCROLL ;
 int materialui_animate_scroll (int *,int ,int ) ;
 int materialui_get_scroll (int *) ;

__attribute__((used)) static void materialui_navigation_set(void *data, bool scroll)
{
   materialui_handle_t *mui = (materialui_handle_t*)data;

   if (!mui || !scroll)
      return;

   materialui_animate_scroll(
         mui,
         materialui_get_scroll(mui),
         MUI_ANIM_DURATION_SCROLL);
}
