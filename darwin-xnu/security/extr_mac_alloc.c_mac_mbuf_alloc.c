
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_tag {int dummy; } ;


 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_MAC_POLICY_LABEL ;
 struct m_tag* m_tag_alloc (int ,int ,int,int) ;

void *
mac_mbuf_alloc(int len, int wait)
{
#pragma unused(len, wait)
 return ((void*)0);

}
