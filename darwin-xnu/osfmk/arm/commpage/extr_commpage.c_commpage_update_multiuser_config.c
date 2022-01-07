
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ _COMM_PAGE_MULTIUSER_CONFIG ;
 scalar_t__ _COMM_PAGE_RW_OFFSET ;
 scalar_t__ commPagePtr ;

void
commpage_update_multiuser_config(uint32_t multiuser_config)
{
 if (commPagePtr)
  *((volatile uint32_t *)(_COMM_PAGE_MULTIUSER_CONFIG+_COMM_PAGE_RW_OFFSET)) = multiuser_config;
}
