
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {int * ptr; int * p; } ;


 int MEMP_NETBUF ;
 struct netbuf* memp_malloc (int ) ;

__attribute__((used)) static struct netbuf* netbuf_new()
{
 struct netbuf *buf = ((void*)0);

 buf = memp_malloc(MEMP_NETBUF);
 if(buf) {
  buf->p = ((void*)0);
  buf->ptr = ((void*)0);
 }
 return buf;
}
