
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
 scalar_t__ old_sigbreak_handler ;
 scalar_t__ old_sighup_handler ;
 scalar_t__ old_sigint_handler ;
 scalar_t__ old_sigpipe_handler ;
 scalar_t__ old_sigterm_handler ;
 int signal (int ,scalar_t__) ;

__attribute__((used)) static void restore_signal_handlers(void)
{
}
