
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm {int dummy; } ;


 int pcm_mmap_avail (struct pcm*) ;
 int pcm_sync_ptr (struct pcm*,int ) ;

__attribute__((used)) static int pcm_avail_update(struct pcm *pcm)
{
   pcm_sync_ptr(pcm, 0);
   return pcm_mmap_avail(pcm);
}
