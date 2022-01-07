
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sd_listen_fds (int ) ;
 int warnx (char*,char*,char*) ;

__attribute__((used)) static void
warn_systemd_ignored_option(char *opt, char *arg)
{
    if (sd_listen_fds(0) > 0) {
        warnx("inherited listen fd; ignoring option: %s %s", opt, arg);
    }
}
