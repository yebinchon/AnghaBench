
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct pbuf {scalar_t__ len; scalar_t__ payload; struct pbuf* next; } ;
struct netbuf {struct pbuf* p; } ;



__attribute__((used)) static void netbuf_copypartial(struct netbuf *buf,void *dataptr,u32 len,u32 offset)
{
 struct pbuf *p;
 u16 i,left;

 left = 0;
 if(buf==((void*)0) || dataptr==((void*)0)) return;

 for(p=buf->p;left<len && p!=((void*)0);p=p->next) {
  if(offset!=0 && offset>=p->len)
   offset -= p->len;
  else {
   for(i=offset;i<p->len;i++) {
    ((u8*)dataptr)[left] = ((u8*)p->payload)[i];
    if(++left>=len) return;
   }
   offset = 0;
  }
 }
}
