#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t firmware_count; TYPE_2__* firmware; scalar_t__ config_data; int /*<<< orphan*/  required_hw_api_list; int /*<<< orphan*/  databases_list; int /*<<< orphan*/  categories_list; int /*<<< orphan*/  licenses_list; int /*<<< orphan*/  permissions_list; int /*<<< orphan*/  note_list; int /*<<< orphan*/  authors_list; int /*<<< orphan*/  supported_extensions_list; TYPE_2__* required_hw_api; TYPE_2__* notes; TYPE_2__* databases; TYPE_2__* categories; TYPE_2__* licenses; TYPE_2__* permissions; TYPE_2__* authors; TYPE_2__* supported_extensions; TYPE_2__* display_version; TYPE_2__* display_name; TYPE_2__* system_manufacturer; TYPE_2__* system_id; TYPE_2__* systemname; TYPE_2__* core_name; TYPE_2__* path; } ;
typedef  TYPE_1__ core_info_t ;
struct TYPE_6__ {size_t count; struct TYPE_6__* list; struct TYPE_6__* all_ext; struct TYPE_6__* desc; struct TYPE_6__* path; } ;
typedef  TYPE_2__ core_info_list_t ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(core_info_list_t *core_info_list)
{
   size_t i, j;

   if (!core_info_list)
      return;

   for (i = 0; i < core_info_list->count; i++)
   {
      core_info_t *info = (core_info_t*)&core_info_list->list[i];

      FUNC1(info->path);
      FUNC1(info->core_name);
      FUNC1(info->systemname);
      FUNC1(info->system_id);
      FUNC1(info->system_manufacturer);
      FUNC1(info->display_name);
      FUNC1(info->display_version);
      FUNC1(info->supported_extensions);
      FUNC1(info->authors);
      FUNC1(info->permissions);
      FUNC1(info->licenses);
      FUNC1(info->categories);
      FUNC1(info->databases);
      FUNC1(info->notes);
      FUNC1(info->required_hw_api);
      FUNC2(info->supported_extensions_list);
      FUNC2(info->authors_list);
      FUNC2(info->note_list);
      FUNC2(info->permissions_list);
      FUNC2(info->licenses_list);
      FUNC2(info->categories_list);
      FUNC2(info->databases_list);
      FUNC2(info->required_hw_api_list);
      FUNC0((config_file_t*)info->config_data);

      for (j = 0; j < info->firmware_count; j++)
      {
         FUNC1(info->firmware[j].path);
         FUNC1(info->firmware[j].desc);
      }
      FUNC1(info->firmware);
   }

   FUNC1(core_info_list->all_ext);
   FUNC1(core_info_list->list);
   FUNC1(core_info_list);
}