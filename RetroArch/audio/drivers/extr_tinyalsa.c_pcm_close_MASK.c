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
struct pcm {int flags; int fd; scalar_t__ buffer_size; scalar_t__ running; scalar_t__ prepared; int /*<<< orphan*/  mmap_buffer; } ;

/* Variables and functions */
 int PCM_MMAP ; 
 struct pcm bad_pcm ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pcm*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcm*) ; 

__attribute__((used)) static int FUNC6(struct pcm *pcm)
{
   if (pcm == &bad_pcm)
      return 0;

   FUNC4(pcm);

   if (pcm->flags & PCM_MMAP)
   {
      FUNC5(pcm);
      FUNC2(pcm->mmap_buffer, FUNC3(pcm, pcm->buffer_size));
   }

   if (pcm->fd >= 0)
      FUNC0(pcm->fd);
   pcm->prepared = 0;
   pcm->running = 0;
   pcm->buffer_size = 0;
   pcm->fd = -1;
   FUNC1(pcm);
   return 0;
}