
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_DEFERRED_PUSH (int *,int ) ;
 unsigned int FILE_TYPE_PLAYLIST_COLLECTION ;
 unsigned int MENU_SETTING_ACTION_CORE_DISK_OPTIONS ;
 unsigned int MENU_SET_CDROM_INFO ;
 int deferred_push_cdrom_info_detail_list ;
 int deferred_push_disk_options ;
 int deferred_push_rdb_collection ;

__attribute__((used)) static int menu_cbs_init_bind_deferred_push_compare_type(
      menu_file_list_cbs_t *cbs, unsigned type)
{
   if (type == FILE_TYPE_PLAYLIST_COLLECTION)
   {
      BIND_ACTION_DEFERRED_PUSH(cbs, deferred_push_rdb_collection);
   }
   else if (type == MENU_SETTING_ACTION_CORE_DISK_OPTIONS)
   {
      BIND_ACTION_DEFERRED_PUSH(cbs, deferred_push_disk_options);
   }
   else if (type == MENU_SET_CDROM_INFO)
   {
      BIND_ACTION_DEFERRED_PUSH(cbs, deferred_push_cdrom_info_detail_list);
      return 0;
   }
   else
      return -1;

   return 0;
}
