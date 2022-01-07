
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ip6aux {int dummy; } ;


 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_INET6 ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;

struct ip6aux *
ip6_findaux(struct mbuf *m)
{
 struct m_tag *tag;

 tag = m_tag_locate(m, KERNEL_MODULE_TAG_ID,
     KERNEL_TAG_TYPE_INET6, ((void*)0));

 return (tag ? (struct ip6aux *)(tag + 1) : ((void*)0));
}
