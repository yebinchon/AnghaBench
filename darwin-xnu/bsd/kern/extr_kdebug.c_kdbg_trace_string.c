
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {char* p_comm; } ;
typedef int dbg_parms ;


 scalar_t__ strlen (char*) ;
 int strncpy (char*,char*,int) ;

void
kdbg_trace_string(struct proc *proc, long *arg1, long *arg2, long *arg3, long *arg4)
{
 char *dbg_nameptr;
 int dbg_namelen;
 long dbg_parms[4];

 if (!proc) {
  *arg1 = 0;
  *arg2 = 0;
  *arg3 = 0;
  *arg4 = 0;
  return;
 }



 dbg_nameptr = proc->p_comm;
 dbg_namelen = (int)strlen(proc->p_comm);
 dbg_parms[0]=0L;
 dbg_parms[1]=0L;
 dbg_parms[2]=0L;
 dbg_parms[3]=0L;

 if(dbg_namelen > (int)sizeof(dbg_parms))
  dbg_namelen = (int)sizeof(dbg_parms);

 strncpy((char *)dbg_parms, dbg_nameptr, dbg_namelen);

 *arg1=dbg_parms[0];
 *arg2=dbg_parms[1];
 *arg3=dbg_parms[2];
 *arg4=dbg_parms[3];
}
