
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ScuSendSoundRequest () ;

__attribute__((used)) static void
scu_interrupt_handler (void)
{

  ScuSendSoundRequest ();
}
