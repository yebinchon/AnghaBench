
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {uintptr_t nsects; } ;
typedef TYPE_1__ kernel_segment_command_t ;
typedef int kernel_section_t ;


 int * firstsect (TYPE_1__*) ;

kernel_section_t *
nextsect(kernel_segment_command_t *sgp, kernel_section_t *sp)
{
 kernel_section_t *fsp = firstsect(sgp);

 if (((uintptr_t)(sp - fsp) + 1) >= sgp->nsects)
  return (kernel_section_t *)((void*)0);

 return sp+1;
}
