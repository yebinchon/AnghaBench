
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int thread_t ;
typedef int load_return_t ;
struct TYPE_3__ {scalar_t__ threadstate_sz; scalar_t__* threadstate; } ;
typedef TYPE_1__ load_result_t ;


 int LOAD_BADMACHO ;
 int LOAD_FAILURE ;
 int LOAD_SUCCESS ;
 scalar_t__* kalloc (scalar_t__) ;
 int kfree (scalar_t__*,scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;
 scalar_t__ os_add_and_mul_overflow (scalar_t__,int,int,scalar_t__*) ;
 scalar_t__ os_sub_overflow (scalar_t__,scalar_t__,scalar_t__*) ;

__attribute__((used)) static
load_return_t
load_threadstate(
 thread_t thread,
 uint32_t *ts,
 uint32_t total_size,
 load_result_t *result
)
{
 uint32_t size;
 int flavor;
 uint32_t thread_size;
 uint32_t *local_ts = ((void*)0);
 uint32_t local_ts_size = 0;
 int ret;

 (void)thread;

 if (total_size > 0) {
  local_ts_size = total_size;
  local_ts = kalloc(local_ts_size);
  if (local_ts == ((void*)0)) {
   return LOAD_FAILURE;
  }
  memcpy(local_ts, ts, local_ts_size);
  ts = local_ts;
 }







 while (total_size > 0) {
  flavor = *ts++;
  size = *ts++;

  if (os_add_and_mul_overflow(size, 2, sizeof(uint32_t), &thread_size) ||
      os_sub_overflow(total_size, thread_size, &total_size)) {
   ret = LOAD_BADMACHO;
   goto bad;
  }

  ts += size;
 }

 result->threadstate = local_ts;
 result->threadstate_sz = local_ts_size;
 return LOAD_SUCCESS;

bad:
 if (local_ts) {
  kfree(local_ts, local_ts_size);
 }
 return ret;
}
