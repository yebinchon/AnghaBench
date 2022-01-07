
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int user_addr_t ;
struct TYPE_6__ {TYPE_2__* kiovp; TYPE_1__* uiovp; } ;
struct uio {scalar_t__ uio_iovcnt; TYPE_3__ uio_iovs; scalar_t__ uio_segflg; } ;
struct TYPE_5__ {int iov_base; } ;
struct TYPE_4__ {int iov_base; } ;


 int* CAST_DOWN (int ,int ) ;
 int EFAULT ;
 int caddr_t ;
 int panic (char*) ;
 int subyte (int ,int) ;
 scalar_t__ uio_curriovlen (struct uio*) ;
 scalar_t__ uio_resid (struct uio*) ;
 int uio_update (struct uio*,int) ;

int
ureadc(int c, struct uio *uio)
{
 if (uio_resid(uio) <= 0)
  panic("ureadc: non-positive resid");
 uio_update(uio, 0);
 if (uio->uio_iovcnt == 0)
  panic("ureadc: non-positive iovcnt");
 if (uio_curriovlen(uio) <= 0)
  panic("ureadc: non-positive iovlen");

 switch ((int) uio->uio_segflg) {

 case 129:
 case 130:
 case 132:
 case 133:
 case 128:
 case 131:
  if (subyte((user_addr_t)uio->uio_iovs.uiovp->iov_base, c) < 0)
   return (EFAULT);
  break;

 case 134:
 case 135:
  *(CAST_DOWN(caddr_t, uio->uio_iovs.kiovp->iov_base)) = c;
  break;

 default:
  break;
 }
 uio_update(uio, 1);
 return (0);
}
