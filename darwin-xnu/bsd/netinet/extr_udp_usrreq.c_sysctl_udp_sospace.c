
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_quad_t ;
typedef scalar_t__ u_int32_t ;
struct sysctl_req {int dummy; } ;
struct sysctl_oid {int oid_number; } ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ MCLBYTES ;
 scalar_t__ MSIZE ;


 scalar_t__ sb_max ;
 int sysctl_io_number (struct sysctl_req*,scalar_t__,int,scalar_t__*,int*) ;
 scalar_t__ udp_recvspace ;
 scalar_t__ udp_sendspace ;

__attribute__((used)) static int
sysctl_udp_sospace(struct sysctl_oid *oidp, void *arg1, int arg2,
    struct sysctl_req *req)
{
#pragma unused(arg1, arg2)
 u_int32_t new_value = 0, *space_p = ((void*)0);
 int changed = 0, error = 0;
 u_quad_t sb_effective_max = (sb_max/(MSIZE+MCLBYTES)) * MCLBYTES;

 switch (oidp->oid_number) {
 case 128:
  space_p = &udp_recvspace;
  break;
 case 129:
  space_p = &udp_sendspace;
  break;
 default:
  return (EINVAL);
 }
 error = sysctl_io_number(req, *space_p, sizeof (u_int32_t),
     &new_value, &changed);
 if (changed) {
  if (new_value > 0 && new_value <= sb_effective_max)
   *space_p = new_value;
  else
   error = ERANGE;
 }
 return (error);
}
