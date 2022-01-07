
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat64 {int st_blksize; } ;
struct stat {int st_blksize; } ;
struct TYPE_2__ {int sb_hiwat; } ;
struct socket {TYPE_1__ so_snd; } ;



int
pru_sense_null(struct socket *so, void *ub, int isstat64)
{
 if (isstat64 != 0) {
  struct stat64 *sb64;

  sb64 = (struct stat64 *)ub;
  sb64->st_blksize = so->so_snd.sb_hiwat;
 } else {
  struct stat *sb;

  sb = (struct stat *)ub;
  sb->st_blksize = so->so_snd.sb_hiwat;
 }

 return (0);
}
