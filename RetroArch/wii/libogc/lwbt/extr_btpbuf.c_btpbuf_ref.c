
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pbuf {int ref; } ;


 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

void btpbuf_ref(struct pbuf *p)
{
 u32 level;

 if(p!=((void*)0)) {
  _CPU_ISR_Disable(level);
  ++(p->ref);
  _CPU_ISR_Restore(level);
 }
}
