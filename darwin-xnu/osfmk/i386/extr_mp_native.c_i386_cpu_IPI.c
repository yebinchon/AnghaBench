
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_signals; } ;


 int INTERPROCESSOR ;
 int LAPIC_VECTOR (int ) ;
 TYPE_1__* cpu_datap (int) ;
 int kprintf (char*,int,int) ;
 int lapic_send_ipi (int,int ) ;

void
i386_cpu_IPI(int cpu)
{






 lapic_send_ipi(cpu, LAPIC_VECTOR(INTERPROCESSOR));
}
