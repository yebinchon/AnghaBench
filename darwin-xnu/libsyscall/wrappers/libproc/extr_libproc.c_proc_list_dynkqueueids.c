
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kqueue_id_t ;


 int PROC_INFO_CALL_PIDINFO ;
 int PROC_PIDLISTDYNKQUEUES ;
 int __proc_info (int ,int,int ,int ,int *,int ) ;

int
proc_list_dynkqueueids(int pid, kqueue_id_t *buf, uint32_t bufsz)
{
 return __proc_info(PROC_INFO_CALL_PIDINFO, pid, PROC_PIDLISTDYNKQUEUES, 0,
   buf, bufsz);
}
