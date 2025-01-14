
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sockbuf {scalar_t__ sb_mbcnt; scalar_t__ sb_mbmax; scalar_t__ sb_cc; scalar_t__ sb_hiwat; } ;
struct mptcb {TYPE_3__* mpt_mpte; } ;
typedef scalar_t__ int32_t ;
struct TYPE_6__ {TYPE_2__* mpte_mppcb; } ;
struct TYPE_5__ {TYPE_1__* mpp_socket; } ;
struct TYPE_4__ {struct sockbuf so_rcv; } ;


 scalar_t__ cfil_sock_data_space (struct sockbuf*) ;
 scalar_t__ imin (scalar_t__,scalar_t__) ;
 int mptcp_sbrcv_grow_rwin (struct mptcb*,struct sockbuf*) ;
 int mpte_lock_assert_held (TYPE_3__*) ;

int32_t
mptcp_sbspace(struct mptcb *mp_tp)
{
 struct sockbuf *sb = &mp_tp->mpt_mpte->mpte_mppcb->mpp_socket->so_rcv;
 uint32_t rcvbuf;
 int32_t space;
 int32_t pending = 0;

 mpte_lock_assert_held(mp_tp->mpt_mpte);

 mptcp_sbrcv_grow_rwin(mp_tp, sb);


 rcvbuf = sb->sb_hiwat;

 space = ((int32_t) imin((rcvbuf - sb->sb_cc),
  (sb->sb_mbmax - sb->sb_mbcnt)));
 if (space < 0)
  space = 0;





 if (pending > space)
  space = 0;
 else
  space -= pending;

 return (space);
}
