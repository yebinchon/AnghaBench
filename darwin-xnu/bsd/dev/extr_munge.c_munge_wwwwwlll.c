
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;



void
munge_wwwwwlll(void *args)
{
 volatile uint64_t *out_args = (volatile uint64_t*)args;
 volatile uint32_t *in_args = (volatile uint32_t*)args;

 out_args[7] = *(volatile uint64_t*)&in_args[9];
 out_args[6] = *(volatile uint64_t*)&in_args[7];
 out_args[5] = *(volatile uint64_t*)&in_args[5];
 out_args[4] = in_args[4];
 out_args[3] = in_args[3];
 out_args[2] = in_args[2];
 out_args[1] = in_args[1];
 out_args[0] = in_args[0];
}
