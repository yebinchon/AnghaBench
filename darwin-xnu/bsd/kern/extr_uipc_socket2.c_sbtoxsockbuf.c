
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xsockbuf {short sb_timeo; int sb_flags; int sb_lowat; int sb_mbmax; int sb_mbcnt; int sb_hiwat; int sb_cc; } ;
struct TYPE_2__ {int tv_sec; short tv_usec; } ;
struct sockbuf {TYPE_1__ sb_timeo; int sb_flags; int sb_lowat; int sb_mbmax; int sb_mbcnt; int sb_hiwat; int sb_cc; } ;


 int hz ;
 short tick ;

void
sbtoxsockbuf(struct sockbuf *sb, struct xsockbuf *xsb)
{
 xsb->sb_cc = sb->sb_cc;
 xsb->sb_hiwat = sb->sb_hiwat;
 xsb->sb_mbcnt = sb->sb_mbcnt;
 xsb->sb_mbmax = sb->sb_mbmax;
 xsb->sb_lowat = sb->sb_lowat;
 xsb->sb_flags = sb->sb_flags;
 xsb->sb_timeo = (short)
     (sb->sb_timeo.tv_sec * hz) + sb->sb_timeo.tv_usec / tick;
 if (xsb->sb_timeo == 0 && sb->sb_timeo.tv_usec != 0)
  xsb->sb_timeo = 1;
}
