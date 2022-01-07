
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct if_clonereq64 {int ifcru_buffer; int ifcr_total; int ifcr_count; } ;
struct if_clonereq32 {int ifcru_buffer; int ifcr_total; int ifcr_count; } ;
typedef int ifcr ;
typedef struct if_clonereq64* caddr_t ;


 int CAST_USER_ADDR_T (int ) ;


 int VERIFY (int ) ;
 int bcopy (struct if_clonereq64*,struct if_clonereq64*,int) ;
 int if_clone_list (int ,int *,int ) ;

__attribute__((used)) static __attribute__((noinline)) int
ifioctl_ifclone(u_long cmd, caddr_t data)
{
 int error = 0;

 switch (cmd) {
 case 129: {
  struct if_clonereq32 ifcr;
  bcopy(data, &ifcr, sizeof (ifcr));
  error = if_clone_list(ifcr.ifcr_count, &ifcr.ifcr_total,
      CAST_USER_ADDR_T(ifcr.ifcru_buffer));
  bcopy(&ifcr, data, sizeof (ifcr));
  break;
 }

 case 128: {
  struct if_clonereq64 ifcr;
  bcopy(data, &ifcr, sizeof (ifcr));
  error = if_clone_list(ifcr.ifcr_count, &ifcr.ifcr_total,
      ifcr.ifcru_buffer);
  bcopy(&ifcr, data, sizeof (ifcr));
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
