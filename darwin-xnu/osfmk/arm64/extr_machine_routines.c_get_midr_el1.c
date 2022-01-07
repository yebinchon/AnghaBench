
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int MRS (int ,char*) ;

__attribute__((used)) static uint32_t get_midr_el1(void)
{
 uint64_t value;

 MRS(value, "MIDR_EL1");


 return (uint32_t) value;
}
