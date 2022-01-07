
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct load_command {scalar_t__ cmd; scalar_t__ cmdsize; } ;
struct TYPE_3__ {unsigned long ncmds; } ;
typedef TYPE_1__ kernel_mach_header_t ;



void *
getcommandfromheader(kernel_mach_header_t *mhp, uint32_t cmd) {
 struct load_command *lcp;
 unsigned long i;

 lcp = (struct load_command *) (mhp + 1);
 for(i = 0; i < mhp->ncmds; i++){
  if(lcp->cmd == cmd) {
   return (void *)lcp;
  }

  lcp = (struct load_command *)((uintptr_t)lcp + lcp->cmdsize);
 }

 return ((void*)0);
}
