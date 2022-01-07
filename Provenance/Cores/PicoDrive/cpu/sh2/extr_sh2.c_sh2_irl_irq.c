
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pending_irl; int pending_int_irq; int pending_level; int sr; int (* irq_callback ) (TYPE_1__*,int) ;int test_irq; int m68krcycles_done; } ;
typedef TYPE_1__ SH2 ;


 scalar_t__ C_SH2_TO_M68K (TYPE_1__,int) ;
 int sh2_do_irq (TYPE_1__*,int,int) ;
 int stub1 (TYPE_1__*,int) ;

int sh2_irl_irq(SH2 *sh2, int level, int nested_call)
{
 int taken;

 sh2->pending_irl = level;
 if (level < sh2->pending_int_irq)
  level = sh2->pending_int_irq;
 sh2->pending_level = level;

 taken = (level > ((sh2->sr >> 4) & 0x0f));
 if (taken) {
  if (!nested_call) {


   int vector = sh2->irq_callback(sh2, level);
   sh2_do_irq(sh2, level, vector);
   sh2->m68krcycles_done += C_SH2_TO_M68K(*sh2, 13);
  }
  else
   sh2->test_irq = 1;
 }
 return taken;
}
