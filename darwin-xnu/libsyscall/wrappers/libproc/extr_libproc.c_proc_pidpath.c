
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int ENOMEM ;
 int EOVERFLOW ;
 int PROC_INFO_CALL_PIDINFO ;
 int PROC_PIDPATHINFO ;
 scalar_t__ PROC_PIDPATHINFO_MAXSIZE ;
 scalar_t__ PROC_PIDPATHINFO_SIZE ;
 int __proc_info (int ,int,int ,int ,void*,scalar_t__) ;
 int errno ;
 scalar_t__ strlen (void*) ;

int
proc_pidpath(int pid, void * buffer, uint32_t buffersize)
{
 int retval, len;

 if (buffersize < PROC_PIDPATHINFO_SIZE) {
  errno = ENOMEM;
  return(0);
 }
 if (buffersize > PROC_PIDPATHINFO_MAXSIZE) {
  errno = EOVERFLOW;
  return(0);
 }

 retval = __proc_info(PROC_INFO_CALL_PIDINFO, pid, PROC_PIDPATHINFO, (uint64_t)0, buffer, buffersize);
 if (retval != -1) {
  len = (int)strlen(buffer);
  return(len);
 }
 return (0);
}
