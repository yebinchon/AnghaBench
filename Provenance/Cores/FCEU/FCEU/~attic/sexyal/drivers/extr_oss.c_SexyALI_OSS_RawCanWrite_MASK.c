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
typedef  int /*<<< orphan*/  uint32_t ;
struct audio_buf_info {int /*<<< orphan*/  bytes; } ;
struct TYPE_3__ {scalar_t__ private; } ;
typedef  TYPE_1__ SexyAL_device ;

/* Variables and functions */
 int /*<<< orphan*/  SNDCTL_DSP_GETOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct audio_buf_info*) ; 

uint32_t FUNC1(SexyAL_device *device)
{
 struct audio_buf_info ai;
 if(!FUNC0(*(int *)device->private,SNDCTL_DSP_GETOSPACE,&ai))
  return(ai.bytes);
 else
  return(0);
}