
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ _COMM_PAGE_ATM_DIAGNOSTIC_CONFIG ;
 scalar_t__ _COMM_PAGE_RW_OFFSET ;
 scalar_t__ commPagePtr ;

void
commpage_update_atm_diagnostic_config(uint32_t diagnostic_config)
{
 if (commPagePtr)
  *((volatile uint32_t*)(_COMM_PAGE_ATM_DIAGNOSTIC_CONFIG+_COMM_PAGE_RW_OFFSET)) = diagnostic_config;
}
