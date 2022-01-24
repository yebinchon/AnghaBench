#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct btstack_hid_adapter {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ BTPAD_EMPTY ; 
 unsigned int MAX_USERS ; 
 struct btstack_hid_adapter* g_connections ; 

__attribute__((used)) static struct btstack_hid_adapter *FUNC0(void)
{
   unsigned i;

   for (i = 0; i < MAX_USERS; i++)
   {
      if (g_connections[i].state == BTPAD_EMPTY)
         return &g_connections[i];
   }

   return 0;
}