
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct m_tag {int dummy; } ;
typedef TYPE_1__* mbuf_t ;
struct TYPE_5__ {int m_flags; } ;


 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_DRVAUX ;
 int M_PKTHDR ;
 int m_tag_delete (TYPE_1__*,struct m_tag*) ;
 struct m_tag* m_tag_locate (TYPE_1__*,int ,int ,int *) ;

void
mbuf_del_drvaux(mbuf_t mbuf)
{
 struct m_tag *tag;

 if (mbuf == ((void*)0) || !(mbuf->m_flags & M_PKTHDR))
  return;

 if ((tag = m_tag_locate(mbuf, KERNEL_MODULE_TAG_ID,
     KERNEL_TAG_TYPE_DRVAUX, ((void*)0))) != ((void*)0))
  m_tag_delete(mbuf, tag);
}
