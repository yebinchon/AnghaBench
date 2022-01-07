
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {struct ip_addr* fromaddr; } ;
struct ip_addr {int dummy; } ;



__attribute__((used)) static __inline__ struct ip_addr* netbuf_fromaddr(struct netbuf *buf)
{
 return (buf?buf->fromaddr:((void*)0));
}
