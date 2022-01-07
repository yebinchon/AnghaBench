
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {int snd_ssthresh; TYPE_2__* t_inpcb; } ;
struct sockbuf {int sb_flags; int sb_idealsize; int sb_hiwat; } ;
struct TYPE_4__ {TYPE_1__* inp_socket; } ;
struct TYPE_3__ {struct sockbuf so_snd; } ;


 int SB_AUTOSIZE ;
 int SB_TRIM ;
 int SET_SNDSB_IDEAL_SIZE (struct sockbuf*,int ) ;

void tcp_cc_resize_sndbuf(struct tcpcb *tp)
{
 struct sockbuf *sb;





 sb = &tp->t_inpcb->inp_socket->so_snd;
 if (sb->sb_hiwat > tp->snd_ssthresh &&
  (sb->sb_flags & SB_AUTOSIZE)) {
  if (sb->sb_idealsize > tp->snd_ssthresh) {
   SET_SNDSB_IDEAL_SIZE(sb, tp->snd_ssthresh);
  }
  sb->sb_flags |= SB_TRIM;
 }
}
