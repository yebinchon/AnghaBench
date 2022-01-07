
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {scalar_t__ sb_waiters; int sb_cc; } ;
typedef int caddr_t ;


 int wakeup (int ) ;

void
sbwakeup(struct sockbuf *sb)
{
 if (sb->sb_waiters > 0)
  wakeup((caddr_t)&sb->sb_cc);
}
