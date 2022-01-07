
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __ARClearInterrupt () ;
 int __ARDmaCallback () ;

__attribute__((used)) static void __ARHandler(u32 irq,void *ctx)
{
 __ARClearInterrupt();

 if(__ARDmaCallback)
  __ARDmaCallback();
}
