
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {scalar_t__ sb_hiwat; scalar_t__ sb_cc; scalar_t__ sb_preconn_hiwat; scalar_t__ sb_mbcnt; scalar_t__ sb_mbmax; } ;


 int cfil_sock_data_space (struct sockbuf*) ;
 int imin (int,int) ;

int
sbspace(struct sockbuf *sb)
{
 int pending = 0;
 int space = imin((int)(sb->sb_hiwat - sb->sb_cc),
     (int)(sb->sb_mbmax - sb->sb_mbcnt));

 if (sb->sb_preconn_hiwat != 0)
  space = imin((int)(sb->sb_preconn_hiwat - sb->sb_cc), space);

 if (space < 0)
  space = 0;





 if (pending > space)
  space = 0;
 else
  space -= pending;

 return (space);
}
