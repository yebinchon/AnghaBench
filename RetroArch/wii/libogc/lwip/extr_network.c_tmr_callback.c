
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void tmr_callback(void *arg)
{
 void (*functor)() = (void(*)())arg;
 if(functor) functor();
}
