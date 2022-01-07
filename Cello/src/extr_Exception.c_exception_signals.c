
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Exception_Signal ;
 int SIGABRT ;
 int SIGFPE ;
 int SIGILL ;
 int SIGINT ;
 int SIGSEGV ;
 int SIGTERM ;
 int signal (int ,int ) ;

void exception_signals(void) {
  signal(SIGABRT, Exception_Signal);
  signal(SIGFPE, Exception_Signal);
  signal(SIGILL, Exception_Signal);
  signal(SIGINT, Exception_Signal);
  signal(SIGSEGV, Exception_Signal);
  signal(SIGTERM, Exception_Signal);
}
