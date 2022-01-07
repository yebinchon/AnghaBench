
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int int32_t ;
struct TYPE_3__ {int task; } ;


 int ENOMEM ;
 int bzero (void*,int) ;
 int copyout (void*,int ,int) ;
 int fill_taskthreadlist (int ,void*,int,int) ;
 int get_numthreads (int ) ;
 scalar_t__ kalloc (int) ;
 int kfree (void*,int) ;

int
proc_pidlistthreads(proc_t p, bool thuniqueid, user_addr_t buffer, uint32_t buffersize, int32_t *retval)
{
 uint32_t count = 0;
 int ret = 0;
 int error = 0;
 void * kbuf;
 uint32_t numthreads = 0;

 int num = get_numthreads(p->task) + 10;
 if (num > 0) {
  numthreads = (uint32_t)num;
 }

 count = buffersize/(sizeof(uint64_t));

 if (numthreads > count) {
  numthreads = count;
 }

 kbuf = (void *)kalloc(numthreads * sizeof(uint64_t));
 if (kbuf == ((void*)0))
  return(ENOMEM);
 bzero(kbuf, numthreads * sizeof(uint64_t));

 ret = fill_taskthreadlist(p->task, kbuf, numthreads, thuniqueid);

 error = copyout(kbuf, buffer, ret);
 kfree(kbuf, numthreads * sizeof(uint64_t));
 if (error == 0)
  *retval = ret;
 return(error);

}
