
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int * buffer; } ;
struct pipe {TYPE_1__ pipe_buffer; } ;


 int OSAddAtomic (int,int *) ;
 int amountpipekva ;
 int amountpipes ;
 int kfree (void*,int) ;

__attribute__((used)) static void
pipe_free_kmem(struct pipe *cpipe)
{
 if (cpipe->pipe_buffer.buffer != ((void*)0)) {
  OSAddAtomic(-(cpipe->pipe_buffer.size), &amountpipekva);
  OSAddAtomic(-1, &amountpipes);
  kfree((void *)cpipe->pipe_buffer.buffer,
     cpipe->pipe_buffer.size);
  cpipe->pipe_buffer.buffer = ((void*)0);
  cpipe->pipe_buffer.size = 0;
 }
}
