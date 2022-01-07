
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_2__ {int p_dispatchqueue_offset; } ;



uint64_t get_dispatchqueue_offset_from_proc(void *p)
{
 if(p != ((void*)0)) {
  proc_t pself = (proc_t)p;
  return (pself->p_dispatchqueue_offset);
 } else {
  return (uint64_t)0;
 }
}
