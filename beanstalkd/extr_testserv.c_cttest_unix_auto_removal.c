
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER_UNIX () ;
 int kill_srvpid () ;

void
cttest_unix_auto_removal()
{

    SERVER_UNIX();
    kill_srvpid();
    SERVER_UNIX();
}
