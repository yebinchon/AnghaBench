
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ pid_t ;


 int PROC_PGRP_ONLY ;
 int proc_listpids (int ,int ,void*,int) ;

int
proc_listpgrppids(pid_t pgrpid, void * buffer, int buffersize)
{
 int numpids;
 numpids = proc_listpids(PROC_PGRP_ONLY, (uint32_t)pgrpid, buffer, buffersize);
 if (numpids == -1)
  return(-1);
 else
  return(numpids/sizeof(int));
}
