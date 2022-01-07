
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ KERN_SUCCESS ;
 int disable_branch_tracing () ;
 int kernel_map ;
 scalar_t__ kmem_alloc (int ,scalar_t__*,int ) ;
 int npcbufs ;
 unsigned int* pc_buffer ;
 unsigned int* pc_buflast ;
 unsigned int* pc_bufptr ;
 int pc_bufsize ;
 scalar_t__ pc_buftomem ;
 scalar_t__ pcsample_enable ;

int
pcsamples_bootstrap(void)
{
        if (!disable_branch_tracing())
            return(ENOTSUP);

 pc_bufsize = npcbufs * sizeof(* pc_buffer);
 if (kmem_alloc(kernel_map, &pc_buftomem,
         (vm_size_t)pc_bufsize) == KERN_SUCCESS)
   pc_buffer = (unsigned int *) pc_buftomem;
 else
   pc_buffer = ((void*)0);

 if (pc_buffer) {
  pc_bufptr = pc_buffer;
  pc_buflast = &pc_bufptr[npcbufs];
  pcsample_enable = 0;
  return(0);
 } else {
  pc_bufsize=0;
  return(EINVAL);
 }

}
