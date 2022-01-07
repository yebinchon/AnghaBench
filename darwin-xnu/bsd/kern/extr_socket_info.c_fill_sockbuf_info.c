
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sockbuf_info {int sbi_timeo; int sbi_flags; int sbi_lowat; int sbi_mbmax; int sbi_mbcnt; int sbi_hiwat; int sbi_cc; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
struct sockbuf {TYPE_1__ sb_timeo; int sb_flags; int sb_lowat; int sb_mbmax; int sb_mbcnt; int sb_hiwat; int sb_cc; } ;


 int hz ;
 int tick ;

__attribute__((used)) static void
fill_sockbuf_info(struct sockbuf *sb, struct sockbuf_info *sbi)
{
 sbi->sbi_cc = sb->sb_cc;
 sbi->sbi_hiwat = sb->sb_hiwat;
 sbi->sbi_mbcnt = sb->sb_mbcnt;
 sbi->sbi_mbmax = sb->sb_mbmax;
 sbi->sbi_lowat = sb->sb_lowat;
 sbi->sbi_flags = sb->sb_flags;
 sbi->sbi_timeo = (u_int32_t)(sb->sb_timeo.tv_sec * hz) +
     sb->sb_timeo.tv_usec / tick;
 if (sbi->sbi_timeo == 0 && sb->sb_timeo.tv_usec != 0)
  sbi->sbi_timeo = 1;
}
