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
struct string_list {int size; TYPE_1__* elems; } ;
struct TYPE_7__ {int /*<<< orphan*/  string; } ;
struct TYPE_8__ {TYPE_2__ target; } ;
struct TYPE_9__ {int /*<<< orphan*/  size; TYPE_3__ value; } ;
typedef  TYPE_4__ rarch_setting_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int FUNC1 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
      rarch_setting_t *setting, bool wraparound)
{
   int audio_device_index;
   struct string_list *ptr  = NULL;

   if (!FUNC0((void**)&ptr))
      return -1;

   if (!ptr)
      return -1;

   /* Get index in the string list */
   audio_device_index = FUNC1(
         ptr, setting->value.target.string) - 1;
   audio_device_index--;

   /* Reset index if needed */
   if (audio_device_index < 0)
      audio_device_index = (int)(ptr->size - 1);

   FUNC2(setting->value.target.string, ptr->elems[audio_device_index].data, setting->size);

   return 0;
}