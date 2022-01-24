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
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
typedef  TYPE_1__ egl_ctx_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

bool FUNC1(egl_ctx_data_t *egl)
{
   if (!egl->config)
   {
      FUNC0("[EGL]: No EGL configurations available.\n");
      return false;
   }
   return true;
}