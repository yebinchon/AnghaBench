
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ q_start; scalar_t__ q_end; } ;
struct cfe_buf {scalar_t__ cfe_peek_offset; scalar_t__ cfe_pass_offset; scalar_t__ cfe_peeked; TYPE_1__ cfe_ctl_q; TYPE_1__ cfe_pending_q; } ;


 int CFIL_QUEUE_VERIFY (TYPE_1__*) ;
 int VERIFY (int) ;

__attribute__((used)) static void
cfil_entry_buf_verify(struct cfe_buf *cfe_buf)
{
 CFIL_QUEUE_VERIFY(&cfe_buf->cfe_ctl_q);
 CFIL_QUEUE_VERIFY(&cfe_buf->cfe_pending_q);


 VERIFY(cfe_buf->cfe_ctl_q.q_start >= cfe_buf->cfe_pending_q.q_end);


 VERIFY(cfe_buf->cfe_peek_offset >= cfe_buf->cfe_pass_offset);


 VERIFY(cfe_buf->cfe_ctl_q.q_start <= cfe_buf->cfe_peeked);
}
