
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t menu_animation_ctx_tag ;
typedef int file_list_t ;


 int menu_animation_kill_by_tag (uintptr_t*) ;
 int xmb_free_list_nodes (int *,int) ;

__attribute__((used)) static void xmb_list_clear(file_list_t *list)
{
   menu_animation_ctx_tag tag = (uintptr_t)list;

   menu_animation_kill_by_tag(&tag);

   xmb_free_list_nodes(list, 0);
}
