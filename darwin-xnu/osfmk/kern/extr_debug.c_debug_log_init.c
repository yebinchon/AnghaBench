
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct embedded_panic_header {int dummy; } ;


 int DEBUG_BUF_SIZE ;
 int assert (int) ;
 int bzero (int ,int ) ;
 char* debug_buf_base ;
 char* debug_buf_ptr ;
 scalar_t__ debug_buf_size ;
 scalar_t__ gPanicBase ;
 scalar_t__ gPanicSize ;
 int panic_info ;
 int printf (char*) ;

void
debug_log_init(void)
{
 bzero(panic_info, DEBUG_BUF_SIZE);

 assert(debug_buf_base != ((void*)0));
 assert(debug_buf_ptr != ((void*)0));
 assert(debug_buf_size != 0);

}
