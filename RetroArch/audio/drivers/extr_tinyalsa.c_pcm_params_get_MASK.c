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
struct snd_pcm_hw_params {int dummy; } ;
struct pcm_params {int dummy; } ;
typedef  int /*<<< orphan*/  fn ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDWR ; 
 unsigned int PCM_IN ; 
 int /*<<< orphan*/  SNDRV_PCM_IOCTL_HW_REFINE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct snd_pcm_hw_params*) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,unsigned int,unsigned int,char) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct pcm_params *FUNC8(unsigned int card, unsigned int device,
      unsigned int flags)
{
   struct snd_pcm_hw_params *params;
   char fn[256];
   int fd;

   FUNC7(fn, sizeof(fn), "/dev/snd/pcmC%uD%u%c", card, device,
         flags & PCM_IN ? 'c' : 'p');

   fd = FUNC5(fn, O_RDWR|O_NONBLOCK);
   if (fd < 0)
   {
      FUNC2(stderr, "cannot open device '%s'\n", fn);
      goto err_open;
   }

   params = (struct snd_pcm_hw_params*)
      FUNC0(1, sizeof(struct snd_pcm_hw_params));

   if (!params)
      goto err_calloc;

   FUNC6(params);
   if (FUNC4(fd, SNDRV_PCM_IOCTL_HW_REFINE, params))
   {
      FUNC2(stderr, "SNDRV_PCM_IOCTL_HW_REFINE error (%d)\n", errno);
      goto err_hw_refine;
   }

   FUNC1(fd);

   return (struct pcm_params *)params;

err_hw_refine:
   FUNC3(params);
err_calloc:
   FUNC1(fd);
err_open:
   return NULL;
}