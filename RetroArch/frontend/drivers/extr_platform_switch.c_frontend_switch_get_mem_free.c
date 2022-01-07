
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mallinfo {int fordblks; } ;


 struct mallinfo mallinfo () ;

__attribute__((used)) static uint64_t frontend_switch_get_mem_free(void)
{
   struct mallinfo mem_info = mallinfo();
   return mem_info.fordblks;
}
