
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ SVC_ACL_OFFSET (int) ;
 scalar_t__ THREAD_PAGE_ACL_OFFSET ;
 scalar_t__ get_thread_page () ;
 int memchunkhax1_write_pair (scalar_t__,int) ;
 int write_kaddr (int,int ) ;

__attribute__((used)) static void do_memchunkhax1(void)
{
   u32 saved_vram_value = *(u32*)0x1F000008;


   memchunkhax1_write_pair(get_thread_page() + THREAD_PAGE_ACL_OFFSET + SVC_ACL_OFFSET(0x7B), 0x1F000000);

   write_kaddr(0x1F000008, saved_vram_value);
}
