
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fault_status_t ;


 scalar_t__ FSC_ALIGNMENT_FAULT ;

__attribute__((used)) static int
is_alignment_fault(fault_status_t status)
{
 return (status == FSC_ALIGNMENT_FAULT);
}
