
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ int64_t ;



void
munge_wwws(void *args)
{
 volatile uint64_t *out_args = (volatile uint64_t*)args;
 volatile uint32_t *in_args = (volatile uint32_t*)args;

 out_args[3] = (int64_t)(int)in_args[3];
 out_args[2] = in_args[2];
 out_args[1] = in_args[1];
 out_args[0] = in_args[0];
}
