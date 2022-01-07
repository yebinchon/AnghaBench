
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* os_reason_t ;
struct TYPE_4__ {scalar_t__ osr_bufsize; int osr_kcd_descriptor; int * osr_kcd_buf; int osr_lock; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 TYPE_1__* OS_REASON_NULL ;
 int assert (int) ;
 int bzero (int *,int) ;
 int kfree (int *,scalar_t__) ;

__attribute__((used)) static void
os_reason_dealloc_buffer(os_reason_t cur_reason)
{
 assert(cur_reason != OS_REASON_NULL);
 LCK_MTX_ASSERT(&cur_reason->osr_lock, LCK_MTX_ASSERT_OWNED);

 if (cur_reason->osr_kcd_buf != ((void*)0) && cur_reason->osr_bufsize != 0) {
  kfree(cur_reason->osr_kcd_buf, cur_reason->osr_bufsize);
 }

 cur_reason->osr_bufsize = 0;
 cur_reason->osr_kcd_buf = ((void*)0);
 bzero(&cur_reason->osr_kcd_descriptor, sizeof(cur_reason->osr_kcd_descriptor));

 return;
}
