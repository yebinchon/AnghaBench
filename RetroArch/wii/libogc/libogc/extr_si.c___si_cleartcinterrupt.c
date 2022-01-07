
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SICOMCSR_TCINT ;
 int* _siReg ;

__attribute__((used)) static __inline__ void __si_cleartcinterrupt()
{
 _siReg[13] = (_siReg[13]|SICOMCSR_TCINT)&SICOMCSR_TCINT;
}
