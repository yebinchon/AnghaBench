
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQMASK (int ) ;
 int IRQ_PI_DI ;
 int IRQ_Request (int ,int ,int *) ;
 int LWP_InitQueue (int *) ;
 int SYS_CreateAlarm (int *) ;
 int __DVDInitWA () ;
 int __DVDInterruptHandler ;
 int __UnmaskIrq (int ) ;
 int __dvd_clearwaitingqueue () ;
 int __dvd_initflag ;
 int __dvd_timeoutalarm ;
 int __dvd_wait_queue ;

void DVD_Init()
{
 if(!__dvd_initflag) {
  __dvd_initflag = 1;
  __dvd_clearwaitingqueue();
  __DVDInitWA();

  IRQ_Request(IRQ_PI_DI,__DVDInterruptHandler,((void*)0));
  __UnmaskIrq(IRQMASK(IRQ_PI_DI));

  SYS_CreateAlarm(&__dvd_timeoutalarm);
  LWP_InitQueue(&__dvd_wait_queue);
 }
}
