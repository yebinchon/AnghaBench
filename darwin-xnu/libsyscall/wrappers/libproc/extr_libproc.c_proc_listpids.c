
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int EINVAL ;
 scalar_t__ PROC_ALL_PIDS ;
 int PROC_INFO_CALL_LISTPIDS ;
 scalar_t__ PROC_PPID_ONLY ;
 int __proc_info (int ,scalar_t__,scalar_t__,int ,void*,int) ;
 int errno ;

int
proc_listpids(uint32_t type, uint32_t typeinfo, void *buffer, int buffersize)
{
 int retval;

 if ((type >= PROC_ALL_PIDS) || (type <= PROC_PPID_ONLY)) {
  if ((retval = __proc_info(PROC_INFO_CALL_LISTPIDS, type, typeinfo,(uint64_t)0, buffer, buffersize)) == -1)
   return(0);
 } else {
  errno = EINVAL;
  retval = 0;
 }
 return(retval);
}
