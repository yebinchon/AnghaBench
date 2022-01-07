
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct m_tag {size_t m_tag_len; } ;
typedef int mbuf_tag_type_t ;
typedef scalar_t__ mbuf_tag_id_t ;
typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int m_flags; } ;


 int EINVAL ;
 int ENOENT ;
 int M_PKTHDR ;
 int NSI_MBUF_TAG ;
 struct m_tag* m_tag_locate (TYPE_1__*,scalar_t__,int ,int *) ;
 int net_str_id_first_last (scalar_t__*,scalar_t__*,int ) ;

errno_t
mbuf_tag_find(
 mbuf_t mbuf,
 mbuf_tag_id_t id,
 mbuf_tag_type_t type,
 size_t *length,
 void **data_p)
{
 struct m_tag *tag;
 u_int32_t mtag_id_first, mtag_id_last;

 if (length != ((void*)0))
  *length = 0;
 if (data_p != ((void*)0))
  *data_p = ((void*)0);


 (void) net_str_id_first_last(&mtag_id_first, &mtag_id_last,
     NSI_MBUF_TAG);
 if (mbuf == ((void*)0) || (mbuf->m_flags & M_PKTHDR) == 0 ||
     id < mtag_id_first || id > mtag_id_last || length == ((void*)0) ||
     data_p == ((void*)0)) {
  return (EINVAL);
 }


 tag = m_tag_locate(mbuf, id, type, ((void*)0));
 if (tag == ((void*)0)) {
  return (ENOENT);
 }


 *length = tag->m_tag_len;
 *data_p = tag + 1;

 return (0);
}
