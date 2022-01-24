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
typedef  int /*<<< orphan*/  video_poke_interface_t ;

/* Variables and functions */
 int /*<<< orphan*/  xv_video_poke_interface ; 

__attribute__((used)) static void FUNC0(void *data,
      const video_poke_interface_t **iface)
{
   (void)data;
   *iface = &xv_video_poke_interface;
}