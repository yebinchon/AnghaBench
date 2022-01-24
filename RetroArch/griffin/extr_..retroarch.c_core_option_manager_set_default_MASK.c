#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t size; int updated; TYPE_1__* opts; } ;
typedef  TYPE_2__ core_option_manager_t ;
struct TYPE_4__ {int /*<<< orphan*/  default_index; int /*<<< orphan*/  index; } ;

/* Variables and functions */

void FUNC0(core_option_manager_t *opt, size_t idx)
{
   if (!opt)
      return;
   if (idx >= opt->size)
      return;

   opt->opts[idx].index = opt->opts[idx].default_index;
   opt->updated         = true;
}