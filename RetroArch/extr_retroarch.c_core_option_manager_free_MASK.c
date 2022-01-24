#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t size; struct TYPE_4__* opts; scalar_t__ conf; int /*<<< orphan*/ * vals; struct TYPE_4__* key; struct TYPE_4__* info; struct TYPE_4__* desc; int /*<<< orphan*/ * val_labels; } ;
typedef  TYPE_1__ core_option_manager_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(core_option_manager_t *opt)
{
   size_t i;

   if (!opt)
      return;

   for (i = 0; i < opt->size; i++)
   {
      if (opt->opts[i].desc)
         FUNC1(opt->opts[i].desc);
      if (opt->opts[i].info)
         FUNC1(opt->opts[i].info);
      if (opt->opts[i].key)
         FUNC1(opt->opts[i].key);

      if (opt->opts[i].vals)
         FUNC2(opt->opts[i].vals);
      if (opt->opts[i].val_labels)
         FUNC2(opt->opts[i].val_labels);

      opt->opts[i].desc = NULL;
      opt->opts[i].info = NULL;
      opt->opts[i].key  = NULL;
      opt->opts[i].vals = NULL;
   }

   if (opt->conf)
      FUNC0(opt->conf);
   FUNC1(opt->opts);
   FUNC1(opt);
}