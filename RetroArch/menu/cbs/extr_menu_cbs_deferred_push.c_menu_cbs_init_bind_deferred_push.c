
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ enum_idx; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;


 int BIND_ACTION_DEFERRED_PUSH (TYPE_1__*,int ) ;
 scalar_t__ MENU_ENUM_LABEL_PLAYLIST_ENTRY ;
 int deferred_push_default ;
 scalar_t__ menu_cbs_init_bind_deferred_push_compare_label (TYPE_1__*,char const*,int ) ;
 scalar_t__ menu_cbs_init_bind_deferred_push_compare_type (TYPE_1__*,unsigned int) ;

int menu_cbs_init_bind_deferred_push(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx,
      uint32_t label_hash)
{
   if (!cbs)
      return -1;

   BIND_ACTION_DEFERRED_PUSH(cbs, deferred_push_default);

   if (cbs->enum_idx != MENU_ENUM_LABEL_PLAYLIST_ENTRY &&
       menu_cbs_init_bind_deferred_push_compare_label(cbs, label, label_hash) == 0)
      return 0;

   if (menu_cbs_init_bind_deferred_push_compare_type(
            cbs, type) == 0)
      return 0;

   return -1;
}
