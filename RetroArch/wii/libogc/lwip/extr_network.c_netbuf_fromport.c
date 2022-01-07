
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct netbuf {int fromport; } ;



__attribute__((used)) static __inline__ u16 netbuf_fromport(struct netbuf *buf)
{
 return (buf?buf->fromport:0);
}
