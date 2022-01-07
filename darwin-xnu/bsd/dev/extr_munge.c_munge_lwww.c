
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



void
munge_lwww(void *args)
{
 volatile uint64_t *out_args = (volatile uint64_t*)args;
 volatile uint32_t *in_args = (volatile uint32_t*)args;

 out_args[3] = in_args[4];
 out_args[2] = in_args[3];
 out_args[1] = in_args[2];
 out_args[0] = *(volatile uint64_t*)&in_args[0];
}
