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
struct TYPE_3__ {size_t fragsize; size_t fragstotal; } ;
typedef  TYPE_1__ audio_buf_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SNDCTL_DSP_GETOSPACE ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static size_t FUNC2(void *data)
{
   audio_buf_info info;
   int *fd = (int*)data;

   if (FUNC1(*fd, SNDCTL_DSP_GETOSPACE, &info) < 0)
   {
      FUNC0("[OSS]: SNDCTL_DSP_GETOSPACE failed ...\n");
      return 1; /* Return something non-zero to avoid SIGFPE. */
   }

   return info.fragsize * info.fragstotal;
}