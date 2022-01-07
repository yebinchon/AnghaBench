
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int mach_port_name_t ;
typedef int kqueue_id_t ;
typedef int int32_t ;


 int EINVAL ;
 int proc_can_use_foreground_hw (int,int ,int ,int *) ;
 int proc_dirtycontrol (int,int,scalar_t__,int *) ;
 int proc_kernmsgbuf (int ,int ,int *) ;
 int proc_listcoalitions (int,int,int ,int ,int *) ;
 int proc_listpids (int,int,int ,int ,int *) ;
 int proc_pid_rusage (int,int,int ,int *) ;
 int proc_piddynkqueueinfo (int,int,int ,int ,int ,int *) ;
 int proc_pidfdinfo (int,int,int,int ,int ,int *) ;
 int proc_pidfileportinfo (int,int,int ,int ,int ,int *) ;
 int proc_pidinfo (int,int,scalar_t__,int ,int ,int *) ;
 int proc_pidoriginatorinfo (int,int,int ,int ,int *) ;
 int proc_setcontrol (int,int,scalar_t__,int ,int ,int *) ;
 int proc_terminate (int,int *) ;
 int proc_udata_info (int,int,int ,int ,int *) ;

int
proc_info_internal(int callnum, int pid, int flavor, uint64_t arg, user_addr_t buffer, uint32_t buffersize, int32_t * retval)
{

 switch(callnum) {
  case 137:

   return(proc_listpids(pid, flavor, buffer, buffersize, retval));
  case 133:
   return(proc_pidinfo(pid, flavor, arg, buffer, buffersize, retval));
  case 135:
   return(proc_pidfdinfo(pid, flavor, (int)arg, buffer, buffersize, retval));
  case 139:
   return(proc_kernmsgbuf(buffer, buffersize, retval));
  case 130:
   return(proc_setcontrol(pid, flavor, arg, buffer, buffersize, retval));
  case 134:
   return(proc_pidfileportinfo(pid, flavor, (mach_port_name_t)arg, buffer, buffersize, retval));
  case 129:
   return(proc_terminate(pid, retval));
  case 140:
   return(proc_dirtycontrol(pid, flavor, arg, retval));
  case 131:
   return (proc_pid_rusage(pid, flavor, buffer, retval));
  case 132:
   return (proc_pidoriginatorinfo(pid, flavor, buffer, buffersize, retval));
  case 138:
   return proc_listcoalitions(pid , flavor , buffer,
         buffersize, retval);
  case 141:
   return proc_can_use_foreground_hw(pid, buffer, buffersize, retval);
  case 136:
   return proc_piddynkqueueinfo(pid, flavor, (kqueue_id_t)arg, buffer, buffersize, retval);

  case 128:
   return proc_udata_info(pid, flavor, buffer, buffersize, retval);

  default:
   return EINVAL;
 }

 return(EINVAL);
}
