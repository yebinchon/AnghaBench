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
struct TYPE_2__ {int nonblocking; } ;
typedef  TYPE_1__ libnx_audren_thread_t ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(void *data, bool state)
{
   libnx_audren_thread_t *aud = (libnx_audren_thread_t*)data;

   if (!aud)
      return;

   aud->nonblocking = state;
}