
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usage (int) ;
 int warnx (char*,char*) ;

__attribute__((used)) static char *
flagusage(char *flag)
{
    warnx("flag requires an argument: %s", flag);
    usage(5);
}
