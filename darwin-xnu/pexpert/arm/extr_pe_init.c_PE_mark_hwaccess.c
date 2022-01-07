
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int last_hwaccess_thread ;

void
PE_mark_hwaccess(uint64_t thread)
{
 last_hwaccess_thread = thread;
 asm volatile("dmb ish");
}
