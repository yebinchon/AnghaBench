
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int processor_t ;



void
cpu_doshutdown(void (*doshutdown) (processor_t),
        processor_t processor)
{
 doshutdown(processor);
}
