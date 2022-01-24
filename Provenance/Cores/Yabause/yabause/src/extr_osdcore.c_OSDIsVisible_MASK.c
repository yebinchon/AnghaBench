#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int hidden; } ;

/* Variables and functions */
 int OSDMSG_COUNT ; 
 TYPE_1__* osdmessages ; 

int FUNC0(int what)
{
   if ((what < 0) || (what >= OSDMSG_COUNT)) return -1;

   return 1 - osdmessages[what].hidden;
}