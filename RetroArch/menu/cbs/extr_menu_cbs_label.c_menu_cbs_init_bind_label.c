
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enum_idx; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;


 int BIND_ACTION_LABEL (TYPE_1__*,int ) ;
 int MSG_UNKNOWN ;
 int action_bind_label_application_dir ;
 int action_bind_label_cheat_browse_address ;
 int action_bind_label_external_application_dir ;
 int action_bind_label_generic ;
 int action_bind_label_internal_memory ;
 int action_bind_label_playlist_collection_entry ;
 int action_bind_label_rdb_entry_detail ;
 int action_bind_label_removable_storage ;

int menu_cbs_init_bind_label(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (!cbs)
      return -1;

   BIND_ACTION_LABEL(cbs, action_bind_label_generic);

   if (cbs->enum_idx != MSG_UNKNOWN)
   {
      switch (cbs->enum_idx)
      {
         case 134:
            BIND_ACTION_LABEL(cbs, action_bind_label_playlist_collection_entry);
            break;
         case 133:
            BIND_ACTION_LABEL(cbs, action_bind_label_playlist_collection_entry);
            break;
         case 135:
            BIND_ACTION_LABEL(cbs, action_bind_label_cheat_browse_address);
            break;
         case 129:
            BIND_ACTION_LABEL(cbs, action_bind_label_internal_memory);
            break;
         case 128:
            BIND_ACTION_LABEL(cbs, action_bind_label_removable_storage);
            break;
         case 131:
            BIND_ACTION_LABEL(cbs, action_bind_label_application_dir);
            break;
         case 130:
            BIND_ACTION_LABEL(cbs, action_bind_label_external_application_dir);
            break;
         case 132:
            BIND_ACTION_LABEL(cbs, action_bind_label_rdb_entry_detail);
            break;
         default:
            break;
      }
   }

   return -1;
}
