#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  menu_file_list_cbs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FILE_TYPE_PLAYLIST_COLLECTION ; 
 unsigned int MENU_SETTING_ACTION_CORE_DISK_OPTIONS ; 
 unsigned int MENU_SET_CDROM_INFO ; 
 int /*<<< orphan*/  deferred_push_cdrom_info_detail_list ; 
 int /*<<< orphan*/  deferred_push_disk_options ; 
 int /*<<< orphan*/  deferred_push_rdb_collection ; 

__attribute__((used)) static int FUNC1(
      menu_file_list_cbs_t *cbs, unsigned type)
{
   if (type == FILE_TYPE_PLAYLIST_COLLECTION)
   {
      FUNC0(cbs, deferred_push_rdb_collection);
   }
   else if (type == MENU_SETTING_ACTION_CORE_DISK_OPTIONS)
   {
      FUNC0(cbs, deferred_push_disk_options);
   }
   else if (type == MENU_SET_CDROM_INFO)
   {
      FUNC0(cbs, deferred_push_cdrom_info_detail_list);
      return 0;
   }
   else
      return -1;

   return 0;
}