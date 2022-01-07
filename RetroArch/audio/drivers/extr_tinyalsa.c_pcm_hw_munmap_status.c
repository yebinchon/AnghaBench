
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm {int * mmap_control; int * mmap_status; int * sync_ptr; } ;


 int _SC_PAGE_SIZE ;
 int free (int *) ;
 int munmap (int *,int) ;
 int sysconf (int ) ;

__attribute__((used)) static void pcm_hw_munmap_status(struct pcm *pcm)
{
    if (pcm->sync_ptr)
    {
        free(pcm->sync_ptr);
        pcm->sync_ptr = ((void*)0);
    }
    else
    {
        int page_size = sysconf(_SC_PAGE_SIZE);
        if (pcm->mmap_status)
            munmap(pcm->mmap_status, page_size);
        if (pcm->mmap_control)
            munmap(pcm->mmap_control, page_size);
    }
    pcm->mmap_status = ((void*)0);
    pcm->mmap_control = ((void*)0);
}
