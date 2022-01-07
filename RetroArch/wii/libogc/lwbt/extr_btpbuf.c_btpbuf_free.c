
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
typedef int u32 ;
struct pbuf {scalar_t__ ref; scalar_t__ flags; struct pbuf* next; } ;


 scalar_t__ PBUF_FLAG_POOL ;
 scalar_t__ PBUF_FLAG_REF ;
 scalar_t__ PBUF_FLAG_ROM ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int btmemb_free (int *,struct pbuf*) ;
 int btmemr_free (struct pbuf*) ;
 int pool_pbufs ;
 int rom_pbufs ;

u8_t btpbuf_free(struct pbuf *p)
{
 u8_t cnt;
 u32 level;
 struct pbuf *q;

 if(p==((void*)0)) return 0;

 cnt = 0;

 _CPU_ISR_Disable(level);
 while(p!=((void*)0)) {
  p->ref--;
  if(p->ref==0) {
   q = p->next;
   if(p->flags==PBUF_FLAG_POOL) {
    btmemb_free(&pool_pbufs,p);
   } else if(p->flags==PBUF_FLAG_ROM || p->flags==PBUF_FLAG_REF) {
    btmemb_free(&rom_pbufs,p);
   } else {
    btmemr_free(p);
   }
   cnt++;
   p = q;
  } else
   p = ((void*)0);
 }
 _CPU_ISR_Restore(level);

 return cnt;
}
