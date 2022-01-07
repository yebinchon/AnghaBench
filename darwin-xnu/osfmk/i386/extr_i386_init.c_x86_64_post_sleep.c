
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 scalar_t__* IdlePML4 ;
 int set_cr3_raw (int ) ;

void
x86_64_post_sleep(uint64_t new_cr3)
{
 IdlePML4[0] = 0;
 set_cr3_raw((uint32_t) new_cr3);
}
