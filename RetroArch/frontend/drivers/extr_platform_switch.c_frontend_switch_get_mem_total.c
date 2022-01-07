
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mallinfo {int usmblks; } ;


 struct mallinfo mallinfo () ;

__attribute__((used)) static uint64_t frontend_switch_get_mem_total(void)
{
   struct mallinfo mem_info = mallinfo();
   return mem_info.usmblks;
}
