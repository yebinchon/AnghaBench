
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int B_TRUE ;
 size_t UINT64_MAX ;
 size_t dtrace_buffer_memory_inuse ;
 size_t dtrace_buffer_memory_maxsize ;

__attribute__((used)) static int
dtrace_buffer_canalloc(size_t size)
{
 if (size > (UINT64_MAX - dtrace_buffer_memory_inuse))
  return (B_FALSE);
 if ((size + dtrace_buffer_memory_inuse) > dtrace_buffer_memory_maxsize)
  return (B_FALSE);

 return (B_TRUE);
}
