#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_mmap_status {int avail_min; } ;
struct TYPE_4__ {struct snd_pcm_mmap_status control; } ;
struct TYPE_3__ {struct snd_pcm_mmap_status status; } ;
struct snd_pcm_sync_ptr {TYPE_2__ c; TYPE_1__ s; } ;
struct snd_pcm_mmap_control {int avail_min; } ;
struct pcm {struct snd_pcm_mmap_status* mmap_control; struct snd_pcm_sync_ptr* sync_ptr; struct snd_pcm_mmap_status* mmap_status; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct snd_pcm_mmap_status* MAP_FAILED ; 
 int MAP_FILE ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SNDRV_PCM_MMAP_OFFSET_CONTROL ; 
 int /*<<< orphan*/  SNDRV_PCM_MMAP_OFFSET_STATUS ; 
 int /*<<< orphan*/  _SC_PAGE_SIZE ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_mmap_status*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pcm*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pcm *pcm)
{
   int page_size;
   if (pcm->sync_ptr)
      return 0;

   page_size = FUNC4(_SC_PAGE_SIZE);

   pcm->mmap_status = (struct snd_pcm_mmap_status*)
      FUNC1(NULL, page_size, PROT_READ, MAP_FILE | MAP_SHARED,
            pcm->fd, SNDRV_PCM_MMAP_OFFSET_STATUS);
   if (pcm->mmap_status == MAP_FAILED)
      pcm->mmap_status = NULL;
   if (!pcm->mmap_status)
      goto mmap_error;

   pcm->mmap_control = (struct snd_pcm_mmap_control*)
      FUNC1(NULL, (size_t)page_size, PROT_READ | PROT_WRITE,
            MAP_FILE | MAP_SHARED, pcm->fd, SNDRV_PCM_MMAP_OFFSET_CONTROL);
   if (pcm->mmap_control == MAP_FAILED)
      pcm->mmap_control = NULL;
   if (!pcm->mmap_control)
   {
      FUNC2(pcm->mmap_status, page_size);
      pcm->mmap_status = NULL;
      goto mmap_error;
   }
   pcm->mmap_control->avail_min = 1;

   return 0;

mmap_error:

   pcm->sync_ptr = (struct snd_pcm_sync_ptr*)
      FUNC0(1, sizeof(*pcm->sync_ptr));
   if (!pcm->sync_ptr)
      return -ENOMEM;
   pcm->mmap_status = &pcm->sync_ptr->s.status;
   pcm->mmap_control = &pcm->sync_ptr->c.control;
   pcm->mmap_control->avail_min = 1;
   FUNC3(pcm, 0);

   return 0;
}