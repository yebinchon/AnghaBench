
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int settings_t ;
struct TYPE_7__ {int need_compute; } ;
typedef TYPE_1__ materialui_handle_t ;


 int * config_get_ptr () ;
 int materialui_set_landscape_optimisations_enable (TYPE_1__*,int *) ;
 int materialui_set_list_view_type (TYPE_1__*,int *) ;
 int materialui_set_secondary_thumbnail_enable (TYPE_1__*,int *) ;
 int materialui_set_thumbnail_dimensions (TYPE_1__*) ;

__attribute__((used)) static void materialui_update_list_view(materialui_handle_t *mui)
{
   settings_t *settings = config_get_ptr();

   if (!settings)
      return;

   materialui_set_list_view_type(mui, settings);
   materialui_set_landscape_optimisations_enable(mui, settings);
   materialui_set_thumbnail_dimensions(mui);
   materialui_set_secondary_thumbnail_enable(mui, settings);

   mui->need_compute = 1;
}
