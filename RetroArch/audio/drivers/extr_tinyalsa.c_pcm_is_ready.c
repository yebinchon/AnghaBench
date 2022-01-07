
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm {scalar_t__ fd; } ;



__attribute__((used)) static int pcm_is_ready(const struct pcm *pcm)
{
   if (pcm != ((void*)0))
      return pcm->fd >= 0;
   return 0;
}
