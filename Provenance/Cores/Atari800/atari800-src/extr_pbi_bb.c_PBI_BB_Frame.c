
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BB_BUTTON_IRQ_MASK ;
 int D (int ) ;
 scalar_t__ FALSE ;
 int PBI_IRQ ;
 int POKEY_IRQEN ;
 int POKEY_OFFSET_IRQEN ;
 int POKEY_PutByte (int ,int ) ;
 scalar_t__ buttondown ;
 int printf (char*) ;

void PBI_BB_Frame(void)
{
 static int count = 0;
 if (buttondown) {
   if (count < 1) count++;
  else {
   D(printf("blackbox button up\n"));
   PBI_IRQ &= ~BB_BUTTON_IRQ_MASK;

   POKEY_PutByte(POKEY_OFFSET_IRQEN, POKEY_IRQEN);
   buttondown = FALSE;
   count = 0;
  }
 }
}
