
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOI ;
 int LAPIC_WRITE (int ,int ) ;

__attribute__((used)) static inline void
_lapic_end_of_interrupt(void)
{
 LAPIC_WRITE(EOI, 0);
}
