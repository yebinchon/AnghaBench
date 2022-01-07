
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int RB_DEBUGGER ;
 int __STDERR_FILENO ;
 int _mach_snprintf (char*,int,char*,char const*) ;
 int abort () ;
 int host_reboot (int ,int ) ;
 int master_host_port ;
 int write (int ,char*,int) ;

void
panic(const char *s, ...)
{
 char buffer[1024];
 int len = _mach_snprintf(buffer, sizeof(buffer), "panic: %s\n", s);
 write(__STDERR_FILENO, buffer, len);


 (void) host_reboot(master_host_port, 0x1000);


 abort();
}
