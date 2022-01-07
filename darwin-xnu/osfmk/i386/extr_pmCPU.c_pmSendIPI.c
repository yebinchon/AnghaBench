
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAPIC_PM_INTERRUPT ;
 int lapic_send_ipi (int,int ) ;

__attribute__((used)) static void
pmSendIPI(int cpu)
{
    lapic_send_ipi(cpu, LAPIC_PM_INTERRUPT);
}
