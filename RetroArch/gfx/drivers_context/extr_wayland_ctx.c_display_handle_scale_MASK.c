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
struct wl_output {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  scale; } ;
typedef  TYPE_1__ output_info_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *data,
      struct wl_output *output,
      int32_t factor)
{
   output_info_t *oi = (output_info_t*)data;

   FUNC0("[Wayland]: Display scale factor %d.\n", factor);
   oi->scale = factor;
}