
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct m_tag {int dummy; } ;
typedef int mbuf_tag_type_t ;
typedef scalar_t__ mbuf_tag_id_t ;
typedef TYPE_1__* mbuf_t ;
struct TYPE_5__ {int m_flags; } ;


 int M_PKTHDR ;
 int NSI_MBUF_TAG ;
 int m_tag_delete (TYPE_1__*,struct m_tag*) ;
 struct m_tag* m_tag_locate (TYPE_1__*,scalar_t__,int ,int *) ;
 int net_str_id_first_last (scalar_t__*,scalar_t__*,int ) ;

void
mbuf_tag_free(
 mbuf_t mbuf,
 mbuf_tag_id_t id,
 mbuf_tag_type_t type)
{
 struct m_tag *tag;
 u_int32_t mtag_id_first, mtag_id_last;


 (void) net_str_id_first_last(&mtag_id_first, &mtag_id_last,
     NSI_MBUF_TAG);
 if (mbuf == ((void*)0) || (mbuf->m_flags & M_PKTHDR) == 0 ||
     id < mtag_id_first || id > mtag_id_last)
  return;

 tag = m_tag_locate(mbuf, id, type, ((void*)0));
 if (tag == ((void*)0)) {
  return;
 }

 m_tag_delete(mbuf, tag);
}
