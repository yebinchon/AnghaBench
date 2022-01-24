#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {float* fraction; } ;
struct TYPE_7__ {TYPE_1__ target; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* change_handler ) (TYPE_3__*) ;TYPE_2__ value; } ;
typedef  TYPE_3__ rarch_setting_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   enum msg_hash_enums enum_idx = (enum msg_hash_enums)FUNC2(label);
   rarch_setting_t     *setting = FUNC3(enum_idx);
   float val                    = (float)FUNC1(path);

   if (!setting)
      return -1;

   *setting->value.target.fraction = (float)val;

   if (setting->change_handler)
      setting->change_handler(setting);

   return FUNC0(NULL, NULL, 0, 0);
}