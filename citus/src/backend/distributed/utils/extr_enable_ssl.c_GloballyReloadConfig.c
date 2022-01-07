
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PGC_SIGHUP ;
 int PostmasterPid ;
 int ProcessConfigFile (int ) ;
 int SIGHUP ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ kill (int ,int ) ;

__attribute__((used)) static void
GloballyReloadConfig()
{
 if (kill(PostmasterPid, SIGHUP))
 {
  ereport(WARNING, (errmsg("failed to send signal to postmaster: %m")));
 }
 ProcessConfigFile(PGC_SIGHUP);
}
