
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PROC_ALL_PIDS ;
 int proc_listpids (int ,int ,void*,int) ;

int
proc_listallpids(void * buffer, int buffersize)
{
 int numpids;
 numpids = proc_listpids(PROC_ALL_PIDS, (uint32_t)0, buffer, buffersize);

 if (numpids == -1)
  return(-1);
 else
  return(numpids/sizeof(int));
}
