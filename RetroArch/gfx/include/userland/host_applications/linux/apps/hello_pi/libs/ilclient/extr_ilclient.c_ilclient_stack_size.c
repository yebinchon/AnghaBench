
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ILCLIENT_THREAD_DEFAULT_STACK_SIZE ;

unsigned int ilclient_stack_size(void)
{
   return ILCLIENT_THREAD_DEFAULT_STACK_SIZE;
}
