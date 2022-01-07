
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int g_should_exit_ ;

void SignalHandler(int signo)
{
  if(signo == SIGINT) {
    g_should_exit_ = 1;
  }
}
