
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ifconf64 {int ifc_len; int ifc_req; } ;
struct ifconf32 {int ifc_len; int ifc_req; } ;
typedef int ifc ;
typedef struct ifconf64* caddr_t ;


 int CAST_USER_ADDR_T (int ) ;




 int VERIFY (int ) ;
 int bcopy (struct ifconf64*,struct ifconf64*,int) ;
 int ifconf (int,int ,int *) ;

__attribute__((used)) static __attribute__((noinline)) int
ifioctl_ifconf(u_long cmd, caddr_t data)
{
 int error = 0;

 switch (cmd) {
 case 131:
 case 129: {
  struct ifconf32 ifc;
  bcopy(data, &ifc, sizeof (ifc));
  error = ifconf(cmd, CAST_USER_ADDR_T(ifc.ifc_req),
      &ifc.ifc_len);
  bcopy(&ifc, data, sizeof (ifc));
  break;
 }

 case 128:
 case 130: {
  struct ifconf64 ifc;
  bcopy(data, &ifc, sizeof (ifc));
  error = ifconf(cmd, ifc.ifc_req, &ifc.ifc_len);
  bcopy(&ifc, data, sizeof (ifc));
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
