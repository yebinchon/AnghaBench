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
struct netplay_room {int dummy; } ;

/* Variables and functions */
 struct netplay_room netplay_host_room ; 

struct netplay_room* FUNC0(void)
{
   return &netplay_host_room;
}