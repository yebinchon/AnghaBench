
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int syswd_t ;
typedef int (* dvdcallbacklow ) (int) ;


 int IRQMASK (int ) ;
 int IRQ_PI_DI ;
 int __MaskIrq (int ) ;
 int __dvd_callback (int) ;

__attribute__((used)) static void __dvd_timeouthandler(syswd_t alarm,void *cbarg)
{
 dvdcallbacklow cb;

 __MaskIrq(IRQMASK(IRQ_PI_DI));
 cb = __dvd_callback;
 if(cb) cb(0x10);
}
