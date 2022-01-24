#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {scalar_t__ enum_idx; } ;
typedef  TYPE_1__ menu_file_list_cbs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ MENU_ENUM_LABEL_PLAYLIST_ENTRY ; 
 int /*<<< orphan*/  deferred_push_default ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,unsigned int) ; 

int FUNC3(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx,
      uint32_t label_hash)
{
   if (!cbs)
      return -1;

   FUNC0(cbs, deferred_push_default);

   if (cbs->enum_idx != MENU_ENUM_LABEL_PLAYLIST_ENTRY &&
       FUNC1(cbs, label, label_hash) == 0)
      return 0;

   if (FUNC2(
            cbs, type) == 0)
      return 0;

   return -1;
}