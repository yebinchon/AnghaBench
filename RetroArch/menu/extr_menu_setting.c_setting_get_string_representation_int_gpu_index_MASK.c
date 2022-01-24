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
struct string_list {TYPE_1__* elems; scalar_t__ size; } ;
struct TYPE_7__ {int* integer; } ;
struct TYPE_8__ {TYPE_2__ target; } ;
struct TYPE_9__ {TYPE_3__ value; } ;
typedef  TYPE_4__ rarch_setting_t ;
struct TYPE_6__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct string_list* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(rarch_setting_t *setting,
      char *s, size_t len)
{
   if (setting)
   {
      struct string_list *list = FUNC3(FUNC2());

      if (list && (*setting->value.target.integer < (int)list->size) && !FUNC1(list->elems[*setting->value.target.integer].data))
         FUNC0(s, len, "%d - %s", *setting->value.target.integer, list->elems[*setting->value.target.integer].data);
      else
         FUNC0(s, len, "%d", *setting->value.target.integer);
   }
}