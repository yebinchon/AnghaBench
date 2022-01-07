
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct m_tag {int m_tag_len; } ;
struct m_drvaux_tag {scalar_t__ da_length; scalar_t__ da_family; scalar_t__ da_subfamily; } ;
typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int m_flags; } ;


 int EINVAL ;
 int ENOENT ;
 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_DRVAUX ;
 scalar_t__ MBUF_DRVAUX_MAXLEN ;
 int M_PKTHDR ;
 int VERIFY (int) ;
 struct m_tag* m_tag_locate (TYPE_1__*,int ,int ,int *) ;

errno_t
mbuf_find_drvaux(mbuf_t mbuf, u_int32_t *family_p, u_int32_t *subfamily_p,
    u_int32_t *length_p, void **data_p)
{
 struct m_drvaux_tag *p;
 struct m_tag *tag;

 if (mbuf == ((void*)0) || !(mbuf->m_flags & M_PKTHDR) || data_p == ((void*)0))
  return (EINVAL);

 *data_p = ((void*)0);

 if ((tag = m_tag_locate(mbuf, KERNEL_MODULE_TAG_ID,
     KERNEL_TAG_TYPE_DRVAUX, ((void*)0))) == ((void*)0))
  return (ENOENT);


 VERIFY(tag->m_tag_len >= sizeof (*p));

 p = (struct m_drvaux_tag *)(tag + 1);
 VERIFY(p->da_length > 0 && p->da_length <= MBUF_DRVAUX_MAXLEN);

 if (family_p != ((void*)0))
  *family_p = p->da_family;
 if (subfamily_p != ((void*)0))
  *subfamily_p = p->da_subfamily;
 if (length_p != ((void*)0))
  *length_p = p->da_length;

 *data_p = (p + 1);

 return (0);
}
