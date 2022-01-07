
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int kill (scalar_t__,int ) ;
 scalar_t__ srvpid ;
 int waitpid (scalar_t__,int ,int ) ;

__attribute__((used)) static void
kill_srvpid(void)
{
    if (!srvpid)
        return;
    kill(srvpid, SIGTERM);
    waitpid(srvpid, 0, 0);
    srvpid = 0;
}
