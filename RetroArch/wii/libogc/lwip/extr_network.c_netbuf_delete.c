
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netbuf {int * p; } ;


 int MEMP_NETBUF ;
 int memp_free (int ,struct netbuf*) ;
 int pbuf_free (int *) ;

__attribute__((used)) static void netbuf_delete(struct netbuf *buf)
{
 if(buf!=((void*)0)) {
  if(buf->p!=((void*)0)) pbuf_free(buf->p);
  memp_free(MEMP_NETBUF,buf);
 }
}
