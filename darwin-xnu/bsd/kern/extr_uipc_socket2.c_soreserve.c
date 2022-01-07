
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int32_t ;
struct TYPE_3__ {int sb_lowat; scalar_t__ sb_hiwat; int sb_sel; int sb_flags; void* sb_idealsize; } ;
struct socket {TYPE_1__ so_snd; TYPE_1__ so_rcv; } ;


 int ENOBUFS ;
 scalar_t__ MCLBYTES ;
 int SB_SEL ;
 int sbrelease (TYPE_1__*) ;
 scalar_t__ sbreserve (TYPE_1__*,void*) ;
 int selthreadclear (int *) ;

int
soreserve(struct socket *so, u_int32_t sndcc, u_int32_t rcvcc)
{
 if (sbreserve(&so->so_snd, sndcc) == 0)
  goto bad;
 else
  so->so_snd.sb_idealsize = sndcc;

 if (sbreserve(&so->so_rcv, rcvcc) == 0)
  goto bad2;
 else
  so->so_rcv.sb_idealsize = rcvcc;

 if (so->so_rcv.sb_lowat == 0)
  so->so_rcv.sb_lowat = 1;
 if (so->so_snd.sb_lowat == 0)
  so->so_snd.sb_lowat = MCLBYTES;
 if (so->so_snd.sb_lowat > so->so_snd.sb_hiwat)
  so->so_snd.sb_lowat = so->so_snd.sb_hiwat;
 return (0);
bad2:
 so->so_snd.sb_flags &= ~SB_SEL;
 selthreadclear(&so->so_snd.sb_sel);
 sbrelease(&so->so_snd);
bad:
 return (ENOBUFS);
}
