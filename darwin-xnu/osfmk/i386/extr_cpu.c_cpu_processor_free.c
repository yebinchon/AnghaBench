
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * processor_t ;


 int kfree (void*,int) ;
 int processor_master ;

void
cpu_processor_free(processor_t proc)
{
 if (proc != ((void*)0) && proc != &processor_master)
  kfree((void *) proc, sizeof(*proc));
}
