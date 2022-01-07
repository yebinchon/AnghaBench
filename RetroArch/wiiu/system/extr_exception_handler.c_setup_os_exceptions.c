
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSSetExceptionCallback (int ,int ) ;
 int OS_EXCEPTION_TYPE_DSI ;
 int OS_EXCEPTION_TYPE_ISI ;
 int OS_EXCEPTION_TYPE_PROGRAM ;
 int exception_dsi_cb ;
 int exception_isi_cb ;
 int exception_msgbuf ;
 int exception_prog_cb ;
 int malloc (int) ;
 int test_os_exceptions () ;

void setup_os_exceptions(void)
{
   exception_msgbuf = malloc(4096);
   OSSetExceptionCallback(OS_EXCEPTION_TYPE_DSI, exception_dsi_cb);
   OSSetExceptionCallback(OS_EXCEPTION_TYPE_ISI, exception_isi_cb);
   OSSetExceptionCallback(OS_EXCEPTION_TYPE_PROGRAM, exception_prog_cb);
   test_os_exceptions();
}
