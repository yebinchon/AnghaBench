
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_buf {scalar_t__ cfi_pending_first; scalar_t__ cfi_pending_last; scalar_t__ cfi_pending_mbcnt; int cfi_inject_q; } ;


 int CFIL_QUEUE_VERIFY (int *) ;
 int VERIFY (int) ;

__attribute__((used)) static void
cfil_info_buf_verify(struct cfi_buf *cfi_buf)
{
 CFIL_QUEUE_VERIFY(&cfi_buf->cfi_inject_q);

 VERIFY(cfi_buf->cfi_pending_first <= cfi_buf->cfi_pending_last);
 VERIFY(cfi_buf->cfi_pending_mbcnt >= 0);
}
