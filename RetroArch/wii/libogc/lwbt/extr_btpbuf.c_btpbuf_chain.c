
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {int dummy; } ;


 int btpbuf_cat (struct pbuf*,struct pbuf*) ;
 int btpbuf_ref (struct pbuf*) ;

void btpbuf_chain(struct pbuf *h,struct pbuf *t)
{
 btpbuf_cat(h,t);
 btpbuf_ref(t);
}
