
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int munge_wlwwwll (void*) ;

void
munge_wlwwwllw(void *args)
{
 volatile uint64_t *out_args = (volatile uint64_t*)args;
 volatile uint32_t *in_args = (volatile uint32_t*)args;

 out_args[7] = in_args[10];
 munge_wlwwwll(args);
}
