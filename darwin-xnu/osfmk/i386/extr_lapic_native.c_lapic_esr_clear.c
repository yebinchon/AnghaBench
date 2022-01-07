
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR_STATUS ;
 int LAPIC_WRITE (int ,int ) ;

__attribute__((used)) static void
lapic_esr_clear(void)
{
 LAPIC_WRITE(ERROR_STATUS, 0);
 LAPIC_WRITE(ERROR_STATUS, 0);
}
