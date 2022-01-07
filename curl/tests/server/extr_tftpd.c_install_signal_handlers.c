
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGBREAK ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 scalar_t__ SIG_ERR ;
 int SIG_IGN ;
 int errno ;
 int exit_signal_handler ;
 int logmsg (char*,int ) ;
 scalar_t__ old_sigbreak_handler ;
 scalar_t__ old_sighup_handler ;
 scalar_t__ old_sigint_handler ;
 scalar_t__ old_sigpipe_handler ;
 scalar_t__ old_sigterm_handler ;
 int siginterrupt (int ,int) ;
 scalar_t__ signal (int ,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void install_signal_handlers(void)
{
}
