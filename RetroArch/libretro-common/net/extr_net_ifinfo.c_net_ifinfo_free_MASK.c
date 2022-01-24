#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_ifinfo_entry {scalar_t__* host; scalar_t__* name; } ;
struct TYPE_3__ {unsigned int size; scalar_t__* entries; } ;
typedef  TYPE_1__ net_ifinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 

void FUNC1(net_ifinfo_t *list)
{
   unsigned k;

   if (!list)
      return;

   for (k = 0; k < list->size; k++)
   {
      struct net_ifinfo_entry *ptr =
         (struct net_ifinfo_entry*)&list->entries[k];

      if (*ptr->name)
         FUNC0(ptr->name);
      if (*ptr->host)
         FUNC0(ptr->host);

      ptr->name = NULL;
      ptr->host = NULL;
   }
   FUNC0(list->entries);
}