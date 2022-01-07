
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_NPROCESSORS_ONLN ;
 unsigned int sysconf (int ) ;

unsigned int Sys_ProcessorCount()
{
  return sysconf(_SC_NPROCESSORS_ONLN);
}
