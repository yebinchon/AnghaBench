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
typedef  int /*<<< orphan*/  GX_CLIENT_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int,char*) ; 

GX_CLIENT_STATE_T *FUNC1(void)
{
   GX_CLIENT_STATE_T *ret = FUNC0(1,sizeof(*ret), "gx_client_state");
   return ret;
}