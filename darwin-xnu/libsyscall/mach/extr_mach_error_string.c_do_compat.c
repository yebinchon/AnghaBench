
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_error_t ;


 int IPC_RCV_MOD ;
 int IPC_SEND_MOD ;
 int MACH_IPC_MIG_MOD ;
 int SERV_ENV_MOD ;
 int SERV_EXECD_MOD ;
 int SERV_NETNAME_MOD ;

__attribute__((used)) static void
do_compat(mach_error_t *org_err)
{
 mach_error_t err = *org_err;






 if ((-200 < err) && (err <= -100))
  err = -(err + 100) | IPC_SEND_MOD;
 else if ((-300 < err) && (err <= -200))
  err = -(err + 200) | IPC_RCV_MOD;
 else if ((-400 < err) && (err <= -300))
  err = -(err + 300) | MACH_IPC_MIG_MOD;
 else if ((1000 <= err) && (err < 1100))
  err = (err - 1000) | SERV_NETNAME_MOD;
 else if ((1600 <= err) && (err < 1700))
  err = (err - 1600) | SERV_ENV_MOD;
 else if ((27600 <= err) && (err < 27700))
  err = (err - 27600) | SERV_EXECD_MOD;

 *org_err = err;
}
