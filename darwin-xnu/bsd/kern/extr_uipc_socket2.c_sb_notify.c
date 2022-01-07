
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {scalar_t__ sb_waiters; int sb_flags; } ;


 int SB_ASYNC ;
 int SB_KNOTE ;
 int SB_SEL ;
 int SB_UPCALL ;

int
sb_notify(struct sockbuf *sb)
{
 return (sb->sb_waiters > 0 ||
     (sb->sb_flags & (SB_SEL|SB_ASYNC|SB_UPCALL|SB_KNOTE)));
}
