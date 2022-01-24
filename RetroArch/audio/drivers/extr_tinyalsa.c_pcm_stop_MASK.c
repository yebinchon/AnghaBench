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
struct pcm {scalar_t__ running; scalar_t__ prepared; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SNDRV_PCM_IOCTL_DROP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pcm *pcm)
{
   if (FUNC1(pcm->fd, SNDRV_PCM_IOCTL_DROP) < 0)
   {
      FUNC0("[TINYALSA]: Cannot stop channel.\n");
      return -1;
   }

   pcm->prepared = 0;
   pcm->running = 0;
   return 0;
}