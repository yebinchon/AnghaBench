
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* pm_action ) (TYPE_2__*,int ) ;int * pm_buffer; } ;
struct TYPE_5__ {scalar_t__ pb_type; TYPE_2__ pb_memory; int * pb_mbuf; } ;
typedef TYPE_1__ pbuf_t ;


 int PBUF_ACTION_DESTROY ;
 scalar_t__ PBUF_TYPE_MBUF ;
 scalar_t__ PBUF_TYPE_MEMORY ;
 scalar_t__ PBUF_TYPE_ZOMBIE ;
 int VERIFY (int) ;
 int m_freem (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 (TYPE_2__*,int ) ;

void
pbuf_destroy(pbuf_t *pbuf)
{

 if (pbuf->pb_type == PBUF_TYPE_MBUF) {
  if (pbuf->pb_mbuf) {
   m_freem(pbuf->pb_mbuf);
   pbuf->pb_mbuf = ((void*)0);
  }
 } else
 if (pbuf->pb_type == PBUF_TYPE_MEMORY) {
  VERIFY(pbuf->pb_memory.pm_buffer != ((void*)0));
  (void) (pbuf->pb_memory.pm_action)(&pbuf->pb_memory,
      PBUF_ACTION_DESTROY);
 } else {
  VERIFY(pbuf->pb_type == PBUF_TYPE_ZOMBIE);
 }

 memset(pbuf, 0, sizeof(*pbuf));
}
