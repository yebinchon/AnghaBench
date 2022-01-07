
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int kernel_map ;
 int kmem_free (int ,int ,scalar_t__) ;
 scalar_t__ pc_buffer ;
 scalar_t__ pc_bufsize ;
 scalar_t__ pcsample_enable ;
 int pcsamples_bootstrap () ;

int
pcsamples_reinit(void)
{
    int ret=0;

    pcsample_enable = 0;

 if (pc_bufsize && pc_buffer)
  kmem_free(kernel_map, (vm_offset_t)pc_buffer, pc_bufsize);

 ret= pcsamples_bootstrap();
 return(ret);
}
