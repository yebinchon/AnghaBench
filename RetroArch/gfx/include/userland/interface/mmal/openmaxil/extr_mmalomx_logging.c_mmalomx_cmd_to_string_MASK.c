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
typedef  scalar_t__ OMX_COMMANDTYPE ;

/* Variables and functions */
 size_t FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char const**) ; 

const char *FUNC2(OMX_COMMANDTYPE cmd)
{
  static const char *names[] = {
    "OMX_CommandStateSet", "OMX_CommandFlush", "OMX_CommandPortDisable",
    "OMX_CommandPortEnable", "OMX_CommandMarkBuffer", "OMX_Command unknown"
  };

  return names[FUNC0((int)cmd, 0, (int)FUNC1(names)-1)];
}