
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGBUS ;
 int SIGFPE ;
 int SIGHUP ;
 int SIGILL ;
 int SIGIOT ;
 int SIGQUIT ;
 int SIGSEGV ;
 int SIGTERM ;
 int SIGTRAP ;
 int signal (int ,int ) ;
 int signal_handler ;

void InitSig(void)
{
  signal(SIGHUP, signal_handler);
  signal(SIGQUIT, signal_handler);
  signal(SIGILL, signal_handler);
  signal(SIGTRAP, signal_handler);
  signal(SIGIOT, signal_handler);
  signal(SIGBUS, signal_handler);
  signal(SIGFPE, signal_handler);
  signal(SIGSEGV, signal_handler);
  signal(SIGTERM, signal_handler);
}
