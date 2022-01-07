
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pf_mtag {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_4__ {int pftag_flags; int * pftag_hdr; } ;


 int PF_TAG_HDR_INET ;
 int PF_TAG_HDR_INET6 ;
 TYPE_1__* m_pftag (struct mbuf*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

void
m_copy_pftag(struct mbuf *to, struct mbuf *from)
{
 memcpy(m_pftag(to), m_pftag(from), sizeof(struct pf_mtag));




}
