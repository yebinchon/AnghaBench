
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {scalar_t__ sb_mbmax; scalar_t__ sb_hiwat; } ;


 int sbflush (struct sockbuf*) ;

void
sbrelease(struct sockbuf *sb)
{
 sbflush(sb);
 sb->sb_hiwat = 0;
 sb->sb_mbmax = 0;
}
