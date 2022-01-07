
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int PROC_INFO_CALL_KERNMSGBUF ;
 int __proc_info (int ,int ,int ,int ,void*,int ) ;

int
proc_kmsgbuf(void * buffer, uint32_t buffersize)
{
 int retval;

 if ((retval = __proc_info(PROC_INFO_CALL_KERNMSGBUF, 0, 0, (uint64_t)0, buffer, buffersize)) == -1)
  return(0);
 return (retval);
}
