
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ sb_cfil_thread; } ;
struct socket {int so_flags; TYPE_2__* so_cfil; TYPE_1__ so_snd; } ;
struct sockbuf {int sb_flags; struct socket* sb_so; } ;
struct cfi_buf {scalar_t__ cfi_pending_last; scalar_t__ cfi_pending_first; scalar_t__ cfi_pending_mbcnt; } ;
typedef int int32_t ;
struct TYPE_4__ {struct cfi_buf cfi_rcv; struct cfi_buf cfi_snd; } ;


 scalar_t__ INT32_MAX ;
 scalar_t__ IS_UDP (struct socket*) ;
 int SB_RECV ;
 int SOF_CONTENT_FILTER ;
 int TRUE ;
 int VERIFY (int) ;
 int cfil_sock_udp_data_pending (struct sockbuf*,int ) ;
 scalar_t__ current_thread () ;
 int socket_lock_assert_owned (struct socket*) ;

int32_t
cfil_sock_data_space(struct sockbuf *sb)
{
 struct socket *so = sb->sb_so;
 uint64_t pending = 0;

 if (IS_UDP(so)) {
  return (cfil_sock_udp_data_pending(sb, TRUE));
 }

 if ((so->so_flags & SOF_CONTENT_FILTER) != 0 && so->so_cfil != ((void*)0) &&
  so->so_snd.sb_cfil_thread != current_thread()) {
  struct cfi_buf *cfi_buf;

  socket_lock_assert_owned(so);

  if ((sb->sb_flags & SB_RECV) == 0)
   cfi_buf = &so->so_cfil->cfi_snd;
  else
   cfi_buf = &so->so_cfil->cfi_rcv;

  pending = cfi_buf->cfi_pending_last -
   cfi_buf->cfi_pending_first;





  if ((uint64_t)cfi_buf->cfi_pending_mbcnt > pending)
   pending = cfi_buf->cfi_pending_mbcnt;
 }

 VERIFY(pending < INT32_MAX);

 return (int32_t)(pending);
}
