
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int MRS (int ,char*) ;

uint64_t get_tcr(void)
{
 uint64_t value;

 MRS(value, "TCR_EL1");
 return value;
}
