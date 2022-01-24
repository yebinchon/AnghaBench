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
typedef  scalar_t__ OMX_STATETYPE ;

/* Variables and functions */
 size_t FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char const**) ; 

const char *FUNC2(OMX_STATETYPE state)
{
  static const char *names[] = {
    "OMX_StateInvalid", "OMX_StateLoaded", "OMX_StateIdle",
    "OMX_StateExecuting", "OMX_StatePause", "OMX_StateWaitForResources",
    "OMX_State unknown"
  };

  return names[FUNC0((int)state, 0, (int)FUNC1(names)-1)];
}