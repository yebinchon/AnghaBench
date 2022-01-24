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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(void *handle)
{
#ifdef ENABLE_CONTAINERS_STANDALONE
   VC_CONTAINER_PARAM_UNUSED(handle);
#else
   FUNC1(handle);
#endif
}