
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct pcm_params {int dummy; } ;
typedef int fn ;


 int O_NONBLOCK ;
 int O_RDWR ;
 unsigned int PCM_IN ;
 int SNDRV_PCM_IOCTL_HW_REFINE ;
 scalar_t__ calloc (int,int) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (struct snd_pcm_hw_params*) ;
 scalar_t__ ioctl (int,int ,struct snd_pcm_hw_params*) ;
 int open (char*,int) ;
 int param_init (struct snd_pcm_hw_params*) ;
 int snprintf (char*,int,char*,unsigned int,unsigned int,char) ;
 int stderr ;

__attribute__((used)) static struct pcm_params *pcm_params_get(unsigned int card, unsigned int device,
      unsigned int flags)
{
   struct snd_pcm_hw_params *params;
   char fn[256];
   int fd;

   snprintf(fn, sizeof(fn), "/dev/snd/pcmC%uD%u%c", card, device,
         flags & PCM_IN ? 'c' : 'p');

   fd = open(fn, O_RDWR|O_NONBLOCK);
   if (fd < 0)
   {
      fprintf(stderr, "cannot open device '%s'\n", fn);
      goto err_open;
   }

   params = (struct snd_pcm_hw_params*)
      calloc(1, sizeof(struct snd_pcm_hw_params));

   if (!params)
      goto err_calloc;

   param_init(params);
   if (ioctl(fd, SNDRV_PCM_IOCTL_HW_REFINE, params))
   {
      fprintf(stderr, "SNDRV_PCM_IOCTL_HW_REFINE error (%d)\n", errno);
      goto err_hw_refine;
   }

   close(fd);

   return (struct pcm_params *)params;

err_hw_refine:
   free(params);
err_calloc:
   close(fd);
err_open:
   return ((void*)0);
}
