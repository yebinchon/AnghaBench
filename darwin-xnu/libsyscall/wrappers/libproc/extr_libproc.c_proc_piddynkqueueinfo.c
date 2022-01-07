
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ kqueue_id_t ;


 int PROC_INFO_CALL_PIDDYNKQUEUEINFO ;
 int __proc_info (int ,int,int,int ,void*,int) ;

int
proc_piddynkqueueinfo(int pid, int flavor, kqueue_id_t kq_id, void *buffer, int buffersize)
{
 int ret;

 if ((ret = __proc_info(PROC_INFO_CALL_PIDDYNKQUEUEINFO, pid, flavor, (uint64_t)kq_id, buffer, buffersize)) == -1) {
  return 0;
 }

 return ret;
}
