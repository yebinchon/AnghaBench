
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct rawcb {scalar_t__ rcb_faddr; } ;


 int EINVAL ;
 int ENOTCONN ;
 int raw_disconnect (struct rawcb*) ;
 int soisdisconnected (struct socket*) ;
 struct rawcb* sotorawcb (struct socket*) ;

__attribute__((used)) static int
raw_udisconnect(struct socket *so)
{
 struct rawcb *rp = sotorawcb(so);

 if (rp == 0)
  return EINVAL;
 if (rp->rcb_faddr == 0) {
  return ENOTCONN;
 }
 raw_disconnect(rp);
 soisdisconnected(so);
 return 0;
}
