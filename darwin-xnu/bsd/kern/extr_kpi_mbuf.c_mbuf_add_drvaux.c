
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u_int32_t ;
struct m_tag {int dummy; } ;
struct m_drvaux_tag {size_t da_length; void* da_subfamily; void* da_family; } ;
typedef TYPE_1__* mbuf_t ;
typedef int mbuf_how_t ;
typedef int errno_t ;
struct TYPE_6__ {int m_flags; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int EWOULDBLOCK ;
 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_DRVAUX ;
 size_t MBUF_DRVAUX_MAXLEN ;
 int MBUF_WAITOK ;
 int M_PKTHDR ;
 struct m_tag* m_tag_create (int ,int ,int,int ,TYPE_1__*) ;
 struct m_tag* m_tag_locate (TYPE_1__*,int ,int ,int *) ;
 int m_tag_prepend (TYPE_1__*,struct m_tag*) ;

errno_t
mbuf_add_drvaux(mbuf_t mbuf, mbuf_how_t how, u_int32_t family,
    u_int32_t subfamily, size_t length, void **data_p)
{
 struct m_drvaux_tag *p;
 struct m_tag *tag;

 if (mbuf == ((void*)0) || !(mbuf->m_flags & M_PKTHDR) ||
     length == 0 || length > MBUF_DRVAUX_MAXLEN)
  return (EINVAL);

 if (data_p != ((void*)0))
  *data_p = ((void*)0);


 if ((tag = m_tag_locate(mbuf, KERNEL_MODULE_TAG_ID,
     KERNEL_TAG_TYPE_DRVAUX, ((void*)0))) != ((void*)0))
  return (EEXIST);


 if ((tag = m_tag_create(KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_DRVAUX,
     sizeof (*p) + length, how, mbuf)) == ((void*)0))
  return ((how == MBUF_WAITOK) ? ENOMEM : EWOULDBLOCK);

 p = (struct m_drvaux_tag *)(tag + 1);
 p->da_family = family;
 p->da_subfamily = subfamily;
 p->da_length = length;


 m_tag_prepend(mbuf, tag);

 if (data_p != ((void*)0))
  *data_p = (p + 1);

 return (0);
}
