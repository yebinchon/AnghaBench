
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int id_t ;


 int MACH_PORT_NULL ;
 int PRIO_DARWIN_THREAD ;
 int __setpriority (int,int ,int) ;
 int _pthread_clear_qos_tsd (int ) ;

int
setpriority(int which, id_t who, int prio)
{
 int rv = __setpriority(which, who, prio);
 if (which == PRIO_DARWIN_THREAD && rv == -2) {
  _pthread_clear_qos_tsd(MACH_PORT_NULL);
  rv = 0;
 }

 return rv;
}
