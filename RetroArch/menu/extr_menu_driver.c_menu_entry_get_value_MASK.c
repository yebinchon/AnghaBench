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
struct TYPE_4__ {char* password_value; char* value; } ;
typedef  TYPE_1__ menu_entry_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 

void FUNC1(menu_entry_t *entry, const char **value)
{
   if (!entry || !value)
      return;

   if (FUNC0(entry))
      *value = entry->password_value;
   else
      *value = entry->value;
}