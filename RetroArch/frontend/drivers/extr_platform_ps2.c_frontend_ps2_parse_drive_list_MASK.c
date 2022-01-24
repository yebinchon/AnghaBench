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
typedef  int /*<<< orphan*/  file_list_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_DEVICE_CDFS ; 
 int /*<<< orphan*/  BOOT_DEVICE_HOST ; 
 int /*<<< orphan*/  BOOT_DEVICE_MASS ; 
 int /*<<< orphan*/  BOOT_DEVICE_MC0 ; 
 int /*<<< orphan*/  BOOT_DEVICE_MC1 ; 
 int /*<<< orphan*/  FILE_TYPE_DIRECTORY ; 
 int MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR ; 
 int MSG_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *data, bool load_content)
{
#ifndef IS_SALAMANDER
   file_list_t *list = (file_list_t*)data;
   enum msg_hash_enums enum_idx = load_content ?
      MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR :
      MSG_UNKNOWN;

   FUNC0(list,
         FUNC2(BOOT_DEVICE_MC0),
         FUNC1(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   FUNC0(list,
         FUNC2(BOOT_DEVICE_MC1),
         FUNC1(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   FUNC0(list,
         FUNC2(BOOT_DEVICE_CDFS),
         FUNC1(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   FUNC0(list,
         FUNC2(BOOT_DEVICE_MASS),
         FUNC1(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   FUNC0(list,
         FUNC2(BOOT_DEVICE_HOST),
         FUNC1(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
#if defined(DEBUG) && !defined(BUILD_FOR_PCSX2)
   menu_entries_append_enum(list,
         "host:",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
#endif
#endif

   return 0;
}