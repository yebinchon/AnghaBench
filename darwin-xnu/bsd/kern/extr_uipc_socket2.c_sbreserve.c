
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;
typedef int u_int32_t ;
struct sockbuf {int sb_hiwat; scalar_t__ sb_lowat; int sb_mbmax; } ;


 int MCLBYTES ;
 int MSIZE ;
 int min (int,scalar_t__) ;
 int sb_efficiency ;
 scalar_t__ sb_max ;

int
sbreserve(struct sockbuf *sb, u_int32_t cc)
{
 if ((u_quad_t)cc > (u_quad_t)sb_max * MCLBYTES / (MSIZE + MCLBYTES))
  return (0);
 sb->sb_hiwat = cc;
 sb->sb_mbmax = min(cc * sb_efficiency, sb_max);
 if (sb->sb_lowat > sb->sb_hiwat)
  sb->sb_lowat = sb->sb_hiwat;
 return (1);
}
