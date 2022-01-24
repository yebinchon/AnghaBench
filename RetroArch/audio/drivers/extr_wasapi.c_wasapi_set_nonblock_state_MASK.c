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
struct TYPE_2__ {int blocking; } ;
typedef  TYPE_1__ wasapi_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static void FUNC1(void *wh, bool nonblock)
{
   wasapi_t *w = (wasapi_t*)wh;

   FUNC0("[WASAPI]: Sync %s.\n", nonblock ? "off" : "on");

   w->blocking = !nonblock;
}