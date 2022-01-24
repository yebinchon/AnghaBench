#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  size_t uint32_t ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_2__ rarch_setting_t ;
struct TYPE_8__ {TYPE_2__* setting; } ;
typedef  TYPE_3__ menu_file_list_cbs_t ;
struct TYPE_9__ {TYPE_1__* list; } ;
typedef  TYPE_4__ file_list_t ;
struct TYPE_6__ {scalar_t__ actiondata; } ;

/* Variables and functions */
 int SD_FLAG_ALLOW_EMPTY ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(uint32_t i)
{
   file_list_t *selection_buf    = FUNC0(0);
   menu_file_list_cbs_t *cbs     = selection_buf ?
      (menu_file_list_cbs_t*)selection_buf->list[i].actiondata : NULL;
   rarch_setting_t *setting      = cbs ? cbs->setting : NULL;
   uint64_t           flags      = setting->flags;

   return flags & SD_FLAG_ALLOW_EMPTY;
}