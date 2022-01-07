
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_name ;
 int fatal_error (char*,int ) ;
 scalar_t__ getuid () ;

__attribute__((used)) static void root_check(void)
{
    if (getuid() != 0)
 fatal_error("Must be run as root - try 'sudo %s ...'", cmd_name);
}
